import 'package:dropdown_search/dropdown_search.dart';
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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: kJakartaRegular.copyWith(color: kBlack),
        ),
        SizedBox(
          height: 1.h,
        ),
        DropdownSearch<Datum>.multiSelection(
          selectedItems: selectedItems,
          validator: validator,
          popupProps: PopupPropsMultiSelection.modalBottomSheet(
              showSearchBox: true,
              searchFieldProps: TextFieldProps(
                  style: kJakartaRegular,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16)),
              itemBuilder: (context, item, _) {
                return Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: kGrey.withOpacity(0.5)))),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.productCode!,
                        style: kJakartaBold,
                      ),
                      Text(
                        item.productName!,
                        style: kJakartaRegular,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        item.locationName! == "false"
                            ? "Location has not been added"
                            : item.locationName!,
                        style: kJakartaRegular.copyWith(
                            fontSize: 12,
                            color: item.locationName! == "false"
                                ? Colors.redAccent
                                : kPrimary),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }),
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
          itemAsString: (item) => item.productName!,
          onChanged: onChanged,
          asyncItems: (String filter) async {
            final Map<String, dynamic> dataUser = await getDetailUser();

            final data = await AssetServices().assetDropdown(dataUser["token"]);
            return data;
          },
        ),
      ],
    );
  }
}
