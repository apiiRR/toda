import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../data/master_repository/master_services.dart';
import '../../data/method.dart';
import '../../domain/models/master_data_model/datum.dart';
import '../utils/app_styles.dart';

class FieldCategoryDropdown extends StatelessWidget {
  const FieldCategoryDropdown(
      {Key? key,
      required this.title,
      this.hint,
      this.onChanged,
      this.selectedItem,
      this.validator})
      : super(key: key);
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
          Text(
            title,
            style: kJakartaRegular.copyWith(color: kBlack),
          ),
          SizedBox(
            height: 1.h,
          ),
          DropdownSearch<Datum>(
            validator: validator,
            selectedItem: selectedItem,
            popupProps: PopupPropsMultiSelection.dialog(
                dialogProps: DialogProps(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: kWhite),
                showSearchBox: true,
                searchFieldProps: TextFieldProps(
                    style: kJakartaRegular,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16)),
                itemBuilder: (context, item, _) {
                  return Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: kGrey.withOpacity(0.5)))),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      item.name!,
                      style: kJakartaRegular,
                    ),
                  );
                }),
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
            itemAsString: (item) => item.name!,
            onChanged: onChanged,
            asyncItems: (String filter) async {
              final Map<String, dynamic> dataUser = await getDetailUser();

              List<Datum> data =
                  await MasterServices().getCategory(dataUser["token"]);

              return data;
            },
          )
        ],
      ),
    );
  }
}
