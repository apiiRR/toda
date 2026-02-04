import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../data/location_repository/location_services.dart';
import '../../data/method.dart';
import '../../domain/models/location_model/datum.dart';
import '../utils/app_styles.dart';

class DropdownSearchLocation extends StatelessWidget {
  const DropdownSearchLocation({
    super.key,
    required this.title,
    required this.onChanged,
    required this.hintText,
    this.validator,
    this.selectedItem,
    required this.enabled,
  });
  final String title;
  final String hintText;
  final void Function(Datum?)? onChanged;
  final String? Function(Datum?)? validator;
  final Datum? selectedItem;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(title, style: kJakartaRegular.copyWith(color: kBlack)),
        SizedBox(height: 1.h),
        DropdownSearch<Datum>(
          enabled: enabled,
          validator: validator,
          selectedItem: selectedItem,
          popupProps: PopupPropsMultiSelection.dialog(
            showSearchBox: true,
            searchFieldProps: TextFieldProps(
              style: kJakartaRegular,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                child: Text(item.code!, style: kJakartaRegular),
              );
            },
          ),
          dropdownDecoratorProps: DropDownDecoratorProps(
            baseStyle: kJakartaRegular,
            dropdownSearchDecoration: InputDecoration(
              filled: true,
              fillColor: kWhite,
              contentPadding: const EdgeInsets.fromLTRB(12, 10, 12, 16),
              hintText: hintText,
              hintStyle: kJakartaLight.copyWith(color: kGrey),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kStroke, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
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
          itemAsString: (item) => item.name!,
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
    );
  }
}
