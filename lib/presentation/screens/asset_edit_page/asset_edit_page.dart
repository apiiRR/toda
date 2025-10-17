import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

import '../../../bloc/asset/asset_bloc.dart';
import '../../../domain/models/asset_model/datum.dart' as datum_asset;
import '../../../domain/models/master_data_model/datum.dart'
    as datum_master_data;
import '../../utils/app_styles.dart';
import '../../widgets/field_category_dropdown.dart';
import '../../widgets/field_date.dart';
import '../../widgets/field_image.dart';
import '../../widgets/field_merk_dropdown.dart';
import '../../widgets/field_text.dart';
import '../../widgets/rounded_button_loading.dart';
import '../../widgets/rounded_button_solid.dart';

class AssetEditPage extends StatefulWidget {
  const AssetEditPage({super.key, required this.data});
  final datum_asset.Datum data;

  @override
  State<AssetEditPage> createState() => _AssetEditPageState();
}

class _AssetEditPageState extends State<AssetEditPage> {
  void removeEmptyValueKeys(Map<String, dynamic> map) {
    map.removeWhere(
      (key, value) => value == null || value == "null" || value.isEmpty,
    );
  }

  datum_master_data.Datum? category;
  datum_master_data.Datum? merk;

  @override
  void initState() {
    category = datum_master_data.Datum(
      id: widget.data.categoryId![0],
      name: widget.data.categoryId![1],
    );
    merk = datum_master_data.Datum(
      id: widget.data.merkId![0],
      name: widget.data.merkId![1],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: kWhite),
        ),
        backgroundColor: kPrimary,
        title: Text(
          "Asset Edit",
          style: kJakartaRegular.copyWith(color: kWhite),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: FormBuilder(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(height: 16),
              FieldCategoryDropdown(
                validator: FormBuilderValidators.required(),
                title: "Category",
                hint: "Example : Kendaraan / Mesin",
                selectedItem: category,
                onChanged: (data) {
                  setState(() {
                    category = data;
                  });
                },
              ),
              const SizedBox(height: 16),
              FieldText(
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
                title: "Asset Name",
                name: "name",
                hint: "Example : Laptop Macbook Pro",
                keyboardType: TextInputType.text,
                initialValue: widget.data.productName,
              ),
              const SizedBox(height: 16),
              FieldText(
                validator: FormBuilderValidators.compose([]),
                title: "User",
                name: "user",
                hint: "Example : Moy",
                keyboardType: TextInputType.text,
                initialValue:
                    widget.data.userName == "false" ? "" : widget.data.userName,
              ),
              const SizedBox(height: 16),
              FieldText(
                validator: FormBuilderValidators.compose([]),
                title: "PO Number",
                name: "po_number",
                hint: "Example : PO123",
                keyboardType: TextInputType.number,
                initialValue:
                    widget.data.poNumber == "false" ? "" : widget.data.poNumber,
              ),
              const SizedBox(height: 16),
              FieldDate(
                validator: FormBuilderValidators.compose([]),
                title: "PO Date",
                name: "po_date",
                hint: "Example : 2025-10-16",
                initialValue:
                    widget.data.poDate == "false"
                        ? null
                        : DateTime.parse(widget.data.poDate!),
              ),
              const SizedBox(height: 16),
              FieldText(
                validator: FormBuilderValidators.compose([]),
                title: "PO Amount",
                name: "po_amount",
                hint: "Example : 50.000.000",
                keyboardType: TextInputType.number,
                inputFormatters: [
                  TextInputFormatter.withFunction((oldValue, newValue) {
                    if (newValue.text.isEmpty) return newValue;

                    // hapus semua non-digit
                    final digitsOnly = newValue.text.replaceAll(
                      RegExp(r'[^\d]'),
                      '',
                    );
                    final number = int.tryParse(digitsOnly);
                    if (number == null) return oldValue;

                    // format tampilannya
                    final formatted = NumberFormat(
                      '#,###',
                      'id_ID',
                    ).format(number);
                    return TextEditingValue(
                      text: formatted,
                      selection: TextSelection.collapsed(
                        offset: formatted.length,
                      ),
                    );
                  }),
                ],
                initialValue:
                    widget.data.poAmount != null
                        ? NumberFormat(
                          '#,###',
                          'id_ID',
                        ).format(widget.data.poAmount)
                        : null,
              ),
              const SizedBox(height: 16),
              FieldMerkDropdown(
                validator: FormBuilderValidators.compose([]),
                title: "Merk",
                hint: "Example : Merk A",
                selectedItem: merk,
                onChanged: (data) {
                  setState(() {
                    merk = data;
                  });
                },
              ),
              const SizedBox(height: 16),
              FieldText(
                validator: FormBuilderValidators.compose([]),
                title: "Notes",
                name: "notes",
                hint: "Example : Kondisi saat ini aman & lancar",
                keyboardType: TextInputType.text,
                initialValue:
                    widget.data.notes == "false" ? "" : widget.data.notes,
              ),
              const SizedBox(height: 16),
              FieldImage(
                validator: FormBuilderValidators.compose([]),
                title: "Image",
                name: "image",
                hint: "image",
                initialValue:
                    widget.data.imageUrl == "" ? null : [widget.data.imageUrl],
              ),
              const SizedBox(height: 32),
              BlocConsumer<AssetBloc, AssetState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    // error: (errorMessage) {
                    //   showAppDialog(
                    //     context,
                    //     type: DialogType.error,
                    //     message: errorMessage,
                    //   );
                    // },
                    // successWithData: (data) {
                    //   dataAsset = data;
                    // },
                    // success: (data) {
                    //   CoolAlert.show(
                    //     context: context,
                    //     type: CoolAlertType.success,
                    //     text: data,
                    //     titleTextStyle: kJakartaBold,
                    //     textTextStyle: kJakartaRegular,
                    //     confirmBtnTextStyle: kJakartaRegular,
                    //     confirmBtnColor: Colors.green,
                    //     onConfirmBtnTap: () {
                    //       Navigator.pop(context);
                    //       Navigator.pop(context);
                    //     },
                    //   );
                    // },
                  );
                },
                builder: (context, state) {
                  return state == const AssetState.loading()
                      ? const RoundedButtonLoading()
                      : RoundedButtonSolid(
                        text: "Update",
                        onAction: () {
                          formKey.currentState!.save();
                          if (formKey.currentState!.validate()) {
                            Map<String, dynamic> inputData;
                            List imageInput =
                                formKey.currentState!.value["image"] == null
                                    ? []
                                    : formKey.currentState!.value["image"]
                                        as List;

                            if (imageInput.isNotEmpty &&
                                imageInput.first == widget.data.imageUrl) {
                              inputData = {
                                "product_name":
                                    formKey.currentState!.value["name"]
                                        .toString(),
                                "category_id": category!.id,
                                "user_name":
                                    formKey.currentState!.value["user"]
                                        .toString(),
                                "notes":
                                    formKey.currentState!.value["notes"]
                                        .toString(),
                                "po_date":
                                    formKey.currentState!.value["po_date"] !=
                                            null
                                        ? DateFormat('yyyy-MM-dd').format(
                                          formKey
                                              .currentState!
                                              .value["po_date"],
                                        )
                                        : null,
                                "po_amount": formKey
                                    .currentState!
                                    .value["po_amount"]
                                    ?.replaceAll('.', ''),
                                "merk_id": merk!.id,
                                "po_number":
                                    formKey.currentState!.value["po_number"],
                              };
                            } else {
                              inputData = {
                                "product_name":
                                    formKey.currentState!.value["name"]
                                        .toString(),
                                "category_id": category!.id,
                                "user_name":
                                    formKey.currentState!.value["user"]
                                        .toString(),
                                "notes":
                                    formKey.currentState!.value["notes"]
                                        .toString(),
                                "image": formKey.currentState!.value["image"],
                                "po_date":
                                    formKey.currentState!.value["po_date"] !=
                                            null
                                        ? DateFormat('yyyy-MM-dd').format(
                                          formKey
                                              .currentState!
                                              .value["po_date"],
                                        )
                                        : null,
                                "po_amount": formKey
                                    .currentState!
                                    .value["po_amount"]
                                    ?.replaceAll('.', ''),
                                "merk_id": merk!.id,
                                "po_number":
                                    formKey.currentState!.value["po_number"],
                              };
                            }

                            // removeEmptyValueKeys(inputData);
                            // log(inputData.toString());
                            context.read<AssetBloc>().add(
                              AssetEvent.putData(inputData, widget.data.id!),
                            );
                          }
                        },
                      );
                },
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
