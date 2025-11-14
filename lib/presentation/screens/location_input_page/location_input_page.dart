import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/location/location_bloc.dart';
import '../../../domain/models/location_model/location_model.dart';
import '../../router/app_route.dart';
import '../../utils/app_styles.dart';
import '../../widgets/app_dialog.dart';
import '../../widgets/field_text.dart';
import '../../widgets/rounded_button_loading.dart';
import '../../widgets/rounded_button_solid.dart';

class LocationInputPage extends StatefulWidget {
  const LocationInputPage({super.key});

  @override
  State<LocationInputPage> createState() => _LocationInputPageState();
}

class _LocationInputPageState extends State<LocationInputPage> {
  LocationModel? dataLocation;

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
          "Location Input",
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
                title: "Code",
                name: "code",
                hint: "LC123",
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 16),
              FieldText(
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
                title: "Room Name",
                name: "name",
                hint: "Room D",
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 32),
              BlocConsumer<LocationBloc, LocationState>(
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
                    successWithData: (data) {
                      dataLocation = data;
                    },
                    success: (message) {
                      showAppDialog(
                        context,
                        type: DialogType.success,
                        message: message,
                        onConfirm: () {
                          context.pushReplacementNamed(
                            RouteName.locationDetailPage,
                            extra: dataLocation!.result!.data!.first,
                          );
                        },
                      );
                    },
                  );
                },
                builder: (context, state) {
                  return state == const LocationState.loading()
                      ? const RoundedButtonLoading()
                      : RoundedButtonSolid(
                          text: "Save",
                          onAction: () {
                            formKey.currentState!.save();
                            if (formKey.currentState!.validate()) {
                              Map<String, dynamic> inputData = {
                                "name": formKey.currentState!.value["name"]
                                    .toString(),
                                "code": formKey.currentState!.value["code"]
                                    .toString(),
                              };

                              context.read<LocationBloc>().add(
                                LocationEvent.postData(inputData),
                              );
                            }
                          },
                        );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
