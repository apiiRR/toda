import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../bloc/auth/auth_bloc.dart';
import '../../router/app_route.dart';
import '../../utils/app_styles.dart';
import '../../widgets/app_dialog.dart';
import '../../widgets/field_text.dart';
import '../../widgets/rounded_button_loading.dart';
import '../../widgets/rounded_button_solid.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool visibility = true;
  final formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(height: 50.h, color: kPrimary),
                  Container(height: 50.h, color: const Color(0xFFF6F8FA)),
                ],
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // SizedBox(
                    //   height: 10.h,
                    // ),
                    SvgPicture.asset("assets/svg/secure.svg"),
                    const SizedBox(height: 16),
                    Text(
                      "Sign in to your \n Account",
                      style: kJakartaBold.copyWith(fontSize: 28, color: kWhite),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Enter your email and password to log in",
                      style: kJakartaLight.copyWith(color: kWhite),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32),
                    FormBuilder(
                      key: formKey,
                      child: Card.filled(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        color: kWhite,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              const SizedBox(height: 16),
                              const FieldText(
                                title: "Username",
                                name: "username",
                                hint: "username",
                              ),
                              const SizedBox(height: 16),
                              FieldText(
                                title: "Password",
                                name: "password",
                                hint: "*********",
                                isPassword: visibility,
                                suffix: IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    setState(() {
                                      visibility = !visibility;
                                    });
                                  },
                                  icon: Icon(
                                    visibility
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Forgot Password ?",
                                    style: kJakartaSemibold.copyWith(
                                      color: kPrimary,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 32),
                              BlocConsumer<AuthBloc, AuthState>(
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
                                    success: () {
                                      context.goNamed(RouteName.homePage);
                                    },
                                  );
                                },
                                builder: (context, state) {
                                  return state == const AuthState.loading()
                                      ? const RoundedButtonLoading()
                                      : RoundedButtonSolid(
                                          text: "Login",
                                          onAction: () {
                                            formKey.currentState!.save();
                                            if (formKey.currentState!
                                                .validate()) {
                                              context.read<AuthBloc>().add(
                                                AuthEvent.login({
                                                  "username": formKey
                                                      .currentState!
                                                      .value["username"]
                                                      .toString(),
                                                  "password": formKey
                                                      .currentState!
                                                      .value["password"]
                                                      .toString(),
                                                }),
                                              );
                                            }
                                          },
                                        );
                                },
                              ),
                              const SizedBox(height: 24),
                              Text(
                                "TODA Asset Management System",
                                style: kJakartaLight.copyWith(
                                  color: kGrey,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              const SizedBox(height: 24),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
