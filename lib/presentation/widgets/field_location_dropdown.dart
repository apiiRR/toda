import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../data/location_repository/location_services.dart';
import '../../data/method.dart';

import '../../domain/models/location_model/datum.dart';
import '../utils/app_styles.dart';

class FieldLocationDropdown extends StatelessWidget {
  const FieldLocationDropdown({
    super.key,
    required this.title,
    this.hint,
    this.onChanged,
    this.selectedItem,
    this.validator,
  });
  final String title;
  final String? hint;
  final void Function(Datum?)? onChanged;
  final Datum? selectedItem;
  final String? Function(Datum?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title, style: kJakartaRegular.copyWith(color: kBlack)),
          SizedBox(height: 1.h),
          DropdownSearch<Datum>(
            validator: validator,
            selectedItem: selectedItem,
            popupProps: PopupPropsMultiSelection.dialog(
              dialogProps: DialogProps(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: kWhite,
              ),
              showSearchBox: true,
              searchFieldProps: TextFieldProps(
                style: kJakartaRegular,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
              ),
              itemBuilder: (context, item, _) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: kGrey.withOpacity(0.5)),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.code!, style: kJakartaRegular),
                      Text(
                        item.parentId!.isNotEmpty
                            ? "${item.parentId![1].toString()}/${item.name}"
                            : "${item.name}",
                        style: kJakartaLight.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                );
              },
            ),
            dropdownDecoratorProps: DropDownDecoratorProps(
              baseStyle: kJakartaRegular,
              dropdownSearchDecoration: InputDecoration(
                filled: true,
                fillColor: kWhite,
                contentPadding: const EdgeInsets.fromLTRB(12, 10, 12, 16),
                hintText: hint,
                hintStyle: kJakartaLight.copyWith(color: kGrey),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimary, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kStroke, width: 2),
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
            ),
            itemAsString: (item) => item.code.toString(),
            onChanged: onChanged,
            asyncItems: (String filter) async {
              final Map<String, dynamic> dataUser = await getDetailUser();

              final data = await LocationServices().locationDropdown(
                dataUser["token"],
              );
              return data;
            },
          ),
        ],
      ),
    );
  }
}
