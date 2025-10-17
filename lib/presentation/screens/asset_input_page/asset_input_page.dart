import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:toda/presentation/widgets/field_date.dart';

import '../../../bloc/asset/asset_bloc.dart';
import '../../../domain/models/asset_model/asset_model.dart';
import '../../../domain/models/master_data_model/datum.dart';
import '../../router/app_route.dart';
import '../../utils/app_styles.dart';
import '../../widgets/app_dialog.dart';
import '../../widgets/field_category_dropdown.dart';
import '../../widgets/field_image.dart';
import '../../widgets/field_merk_dropdown.dart';
import '../../widgets/field_text.dart';
import '../../widgets/rounded_button_loading.dart';
import '../../widgets/rounded_button_solid.dart';

class AssetInputPage extends StatefulWidget {
  const AssetInputPage({super.key});

  @override
  State<AssetInputPage> createState() => _AssetInputPageState();
}

class _AssetInputPageState extends State<AssetInputPage> {
  AssetModel? dataAsset;
  Datum? category;
  Datum? merk;

  void removeEmptyValueKeys(Map<String, dynamic> map) {
    map.removeWhere((key, value) {
      if (value is List) {
        return value.isEmpty;
      } else {
        return value == null || value == "null";
      }
    });
  }

  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
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
          "Asset Input",
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
              ),
              const SizedBox(height: 16),
              FieldText(
                validator: FormBuilderValidators.compose([]),
                title: "User",
                name: "user",
                hint: "Example : John",
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 16),
              FieldText(
                validator: FormBuilderValidators.compose([]),
                title: "PO Number",
                name: "po_number",
                hint: "Example : PO123",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              FieldDate(
                validator: FormBuilderValidators.compose([]),
                title: "PO Date",
                name: "po_date",
                hint: "Example : 2025-10-16",
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
              ),
              const SizedBox(height: 16),
              FieldMerkDropdown(
                validator: FormBuilderValidators.compose([]),
                title: "Merk",
                hint: "Example : Merk A",
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
              ),
              const SizedBox(height: 16),
              FieldImage(
                validator: FormBuilderValidators.compose([]),
                title: "Image",
                name: "image",
                hint: "image",
              ),
              const SizedBox(height: 32),
              BlocConsumer<AssetBloc, AssetState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    error: (errorMessage) {
                      // showAppDialog(
                      //   context,
                      //   type: DialogType.error,
                      //   message: errorMessage,
                      // );
                    },
                    successWithData: (data) {
                      dataAsset = data;
                    },
                    success: (message) {
                      showAppDialog(
                        context,
                        type: DialogType.success,
                        message: message,
                        onConfirm: () {
                          context.pushReplacementNamed(
                            RouteName.assetDetailPage,
                            extra: [
                              dataAsset!.result!.data!.first,
                              true,
                              "0",
                              0,
                            ],
                          );
                        },
                      );
                    },
                  );
                },
                builder: (context, state) {
                  return state == const AssetState.loading()
                      ? const RoundedButtonLoading()
                      : RoundedButtonSolid(
                        text: "Save",
                        onAction: () {
                          formKey.currentState!.save();
                          if (formKey.currentState!.validate()) {
                            Map<String, dynamic> inputData = {
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
                                  formKey.currentState!.value["po_date"] != null
                                      ? DateFormat('yyyy-MM-dd').format(
                                        formKey.currentState!.value["po_date"],
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

                            removeEmptyValueKeys(inputData);

                            context.read<AssetBloc>().add(
                              AssetEvent.postData(inputData),
                            );
                          }
                        },
                      );
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
