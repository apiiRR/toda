import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../bloc/asset/asset_bloc.dart';
import '../../../domain/models/asset_model/datum.dart' as datum_asset;
import '../../../domain/models/master_data_model/datum.dart' as datum_master;
import '../../utils/app_styles.dart';
import '../../widgets/app_dialog.dart';
import '../../widgets/field_job_dropdown.dart';
import '../../widgets/field_image.dart';
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
  datum_master.Datum? job;

  @override
  void initState() {
    if (widget.data.jobId!.isNotEmpty) {
      job = datum_master.Datum(
        id: widget.data.jobId![0],
        name: widget.data.jobId![1],
      );
    }
    super.initState();
  }

  void removeEmptyValueKeys(Map<String, dynamic> map) {
    map.removeWhere(
      (key, value) => value == null || value == "null" || value.isEmpty,
    );
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
              FieldText(
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
                title: "Asset Code",
                name: "code",
                hint: "Example : 123/123/123",
                keyboardType: TextInputType.text,
                initialValue: widget.data.productCode,
                readOnly: true,
                enable: false,
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
              FieldJobDropdown(
                title: "Job Department",
                hint: "Example : IT Officer",
                onChanged: (data) {
                  setState(() {
                    job = data;
                  });
                },
                selectedItem: job,
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
                    error: (errorMessage) {
                      showAppDialog(
                        context,
                        type: DialogType.error,
                        message: errorMessage,
                      );
                    },
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
                                "product_code":
                                    formKey.currentState!.value["code"]
                                        .toString(),
                                "user_name":
                                    formKey.currentState!.value["user"]
                                        .toString(),
                                "notes":
                                    formKey.currentState!.value["notes"]
                                        .toString(),
                              };
                            } else {
                              inputData = {
                                "product_name":
                                    formKey.currentState!.value["name"]
                                        .toString(),
                                "product_code":
                                    formKey.currentState!.value["code"]
                                        .toString(),
                                "user_name":
                                    formKey.currentState!.value["user"]
                                        .toString(),
                                "notes":
                                    formKey.currentState!.value["notes"]
                                        .toString(),
                                "image": imageInput,
                              };
                            }

                            if (job != null) {
                              inputData["job_id"] = job!.id;
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
