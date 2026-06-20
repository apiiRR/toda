import 'dart:async';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../data/asset_repository/asset_services.dart';
import '../../data/method.dart';
import '../../domain/models/asset_model/datum.dart';
import '../utils/app_styles.dart';

class DropdownSearchAsset extends StatelessWidget {
  const DropdownSearchAsset({
    super.key,
    required this.title,
    required this.onChanged,
    required this.hintText,
    this.validator,
    required this.selectedItems,
  });

  final String title;
  final String hintText;
  final void Function(List<Datum>)? onChanged;
  final String? Function(List<Datum>?)? validator;
  final List<Datum> selectedItems;

  Future<void> _showAssetPicker(
    BuildContext context,
    FormFieldState<List<Datum>> field,
  ) async {
    final result = await showModalBottomSheet<List<Datum>>(
      context: context,
      isScrollControlled: true,
      backgroundColor: kWhite,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return _AssetSelectionSheet(
          selectedItems: selectedItems,
          onChanged: (items) {
            field.didChange(items);
            onChanged?.call(items);
          },
        );
      },
    );

    if (result != null) {
      field.didChange(result);
      onChanged?.call(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormField<List<Datum>>(
      initialValue: selectedItems,
      validator: validator,
      builder: (field) {
        final String valueText = selectedItems.isEmpty
            ? hintText
            : "${selectedItems.length} asset selected";
        final bool hasError = field.hasError;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title, style: kJakartaRegular.copyWith(color: kBlack)),
            SizedBox(height: 1.h),
            InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () => _showAssetPicker(context, field),
              child: InputDecorator(
                isEmpty: selectedItems.isEmpty,
                baseStyle: kJakartaRegular,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kWhite,
                  contentPadding: const EdgeInsets.fromLTRB(12, 10, 12, 16),
                  errorText: field.errorText,
                  suffixIcon: Icon(Icons.keyboard_arrow_down, color: kGrey),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kStroke, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimary, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: hasError ? kPrimary : kStroke,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimary, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimary, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorStyle: kJakartaLight,
                ),
                child: Text(
                  valueText,
                  style: selectedItems.isEmpty
                      ? kJakartaLight.copyWith(color: kGrey)
                      : kJakartaRegular,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _AssetSelectionSheet extends StatefulWidget {
  const _AssetSelectionSheet({
    required this.selectedItems,
    required this.onChanged,
  });

  final List<Datum> selectedItems;
  final void Function(List<Datum>) onChanged;

  @override
  State<_AssetSelectionSheet> createState() => _AssetSelectionSheetState();
}

class _AssetSelectionSheetState extends State<_AssetSelectionSheet> {
  static const int _pageSize = 20;

  final AssetServices _service = AssetServices();
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  List<Datum> _items = [];
  late List<Datum> _selectedItems;
  Timer? _searchDebounce;
  String? _token;
  String _filter = "";
  bool _isLoading = false;
  bool _isFull = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _selectedItems = List<Datum>.from(widget.selectedItems);
    _scrollController.addListener(_onScroll);
    _loadItems(reset: true);
  }

  @override
  void dispose() {
    _searchDebounce?.cancel();
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  Future<String> _getToken() async {
    if (_token != null) return _token!;
    final Map<String, dynamic> dataUser = await getDetailUser();
    _token = dataUser["token"] as String;
    return _token!;
  }

  Future<void> _loadItems({bool reset = false}) async {
    if (_isLoading) return;
    if (_isFull && !reset) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
      if (reset) {
        _items = [];
        _isFull = false;
      }
    });

    try {
      final token = await _getToken();
      final data = await _service.assetDropdown(
        token,
        start: reset ? 0 : _items.length,
        filter: _filter,
      );

      if (!mounted) return;

      setState(() {
        if (reset) {
          _items = data;
        } else {
          _items.addAll(data);
        }
        _isFull = data.length < _pageSize;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _errorMessage = e.toString();
      });
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final position = _scrollController.position;
    if (position.pixels >= position.maxScrollExtent - 120) {
      _loadItems();
    }
  }

  void _onSearchChanged(String value) {
    _searchDebounce?.cancel();
    _searchDebounce = Timer(const Duration(milliseconds: 400), () {
      _filter = value;
      _loadItems(reset: true);
    });
  }

  bool _isSameAsset(Datum first, Datum second) {
    if (first.id != null && second.id != null) return first.id == second.id;
    return first.productCode == second.productCode;
  }

  bool _isSelected(Datum item) {
    return _selectedItems.any((selected) => _isSameAsset(selected, item));
  }

  void _toggleSelection(Datum item) {
    setState(() {
      if (_isSelected(item)) {
        _selectedItems.removeWhere((selected) => _isSameAsset(selected, item));
      } else {
        _selectedItems.add(item);
      }
    });
    widget.onChanged(List<Datum>.from(_selectedItems));
  }

  String _safeText(String? value, String fallback) {
    if (value == null || value == "false" || value == "null") return fallback;
    return value;
  }

  Widget _buildAssetItem(Datum item) {
    final bool isSelected = _isSelected(item);
    final String locationName = _safeText(item.locationName, "Asset inactive");

    return InkWell(
      onTap: () => _toggleSelection(item),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: kGrey.withValues(alpha: 0.5)),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(
              value: isSelected,
              activeColor: kPrimary,
              onChanged: (_) => _toggleSelection(item),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_safeText(item.productCode, "-"), style: kJakartaBold),
                  const SizedBox(height: 4),
                  Text(
                    _safeText(item.productName, "-"),
                    style: kJakartaRegular,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    locationName,
                    style: kJakartaRegular.copyWith(
                      fontSize: 12,
                      color: locationName == "Asset inactive"
                          ? kGrey
                          : kPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildList() {
    if (_isLoading && _items.isEmpty) {
      return Center(child: CircularProgressIndicator(color: kPrimary));
    }

    if (_errorMessage != null && _items.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(_errorMessage!, style: kJakartaRegular),
        ),
      );
    }

    if (_items.isEmpty) {
      return Center(child: Text("Data not found", style: kJakartaRegular));
    }

    return ListView.builder(
      controller: _scrollController,
      itemCount: _items.length + (_isLoading ? 1 : 0),
      itemBuilder: (context, index) {
        if (index >= _items.length) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Center(child: CircularProgressIndicator(color: kPrimary)),
          );
        }

        return _buildAssetItem(_items[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.85,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 8, 8),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Asset",
                      style: kJakartaBold.copyWith(fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(
                      context,
                      List<Datum>.from(_selectedItems),
                    ),
                    child: Text("Done", style: kJakartaRegular),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
              child: TextField(
                controller: _searchController,
                style: kJakartaRegular,
                onChanged: _onSearchChanged,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kWhite,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  hintText: "Search asset",
                  hintStyle: kJakartaLight.copyWith(color: kGrey),
                  prefixIcon: Icon(Icons.search, color: kGrey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kStroke, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimary, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            if (_selectedItems.isNotEmpty)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${_selectedItems.length} asset selected",
                    style: kJakartaRegular.copyWith(
                      color: kPrimary,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            Expanded(child: _buildList()),
          ],
        ),
      ),
    );
  }
}
