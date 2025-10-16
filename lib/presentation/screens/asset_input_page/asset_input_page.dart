import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/asset/asset_bloc.dart';
import '../../../domain/models/asset_model/asset_model.dart';
import '../../../domain/models/master_data_model/datum.dart';
import '../../router/app_route.dart';
import '../../utils/app_styles.dart';
import '../../widgets/app_dialog.dart';
import '../../widgets/field_category_dropdown.dart';
import '../../widgets/field_job_dropdown.dart';
import '../../widgets/field_image.dart';
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
  Datum? job;
  Datum? category;

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
              // FieldText(
              //   validator: FormBuilderValidators.compose(
              //       [FormBuilderValidators.required()]),
              //   title: "Asset Code",
              //   name: "code",
              //   hint: "Example : 123/123/123",
              //   keyboardType: TextInputType.text,
              // ),
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
                hint: "Example : Moy",
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 16),
              FieldJobDropdown(
                title: "Job Department",
                hint: "Example : IT Officer",
                onChanged: (data) {
                  setState(() {
                    job = data;
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
                      showAppDialog(
                        context,
                        type: DialogType.error,
                        message: errorMessage,
                      );
                    },
                    successWithData: (data) {
                      dataAsset = data;
                    },
                    success: (message) {
                      showAppDialog(
                        context,
                        type: DialogType.error,
                        message: message,
                        onConfirm: () {
                          context.pushReplacementNamed(
                            RouteName.assetDetailPage,
                            extra: [
                              dataAsset!.result!.data!.first,
                              false,
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
                              // "product_code": formKey
                              //     .currentState!.value["code"]
                              //     .toString(),
                              "category_id": category!.id,
                              "user_name":
                                  formKey.currentState!.value["user"]
                                      .toString(),
                              "notes":
                                  formKey.currentState!.value["notes"]
                                      .toString(),
                              "image": formKey.currentState!.value["image"],
                            };

                            if (job != null) {
                              inputData["job_id"] = job!.id;
                            }

                            removeEmptyValueKeys(inputData);

                            // log(jsonEncode(inputData));

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
