import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/auth/auth_bloc.dart';
import '../../router/app_route.dart';
import '../../utils/app_styles.dart';
import '../login_page/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          signedIn: () {
            context.goNamed(RouteName.homePage);
          },
          signedOut: () {
            context.goNamed(RouteName.onboardingPage);
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          // floatingActionButtonLocation:
          //     FloatingActionButtonLocation.centerDocked,
          // floatingActionButton: FloatingActionButton(
          //   backgroundColor: kPrimary,
          //   onPressed: () {
          //     if (state != const AuthState.loading()) {
          //       Navigator.of(context).push(
          //           MaterialPageRoute(builder: (context) => const LoginPage()));
          //     }
          //   },
          //   child: state == const AuthState.loading()
          //       ? CircularProgressIndicator(
          //           color: kWhite,
          //         )
          //       : Icon(
          //           Icons.arrow_forward_ios_rounded,
          //           color: kWhite,
          //         ),
          // ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/png/logo_long.png"),
              // Center(
              //   child: Text(
              //     "Asset Management System",
              //     style: kJakartaRegular.copyWith(fontSize: 16),
              //   ),
              // ),
              const SizedBox(height: 100),
              FloatingActionButton(
                backgroundColor: kPrimary,
                onPressed: () {
                  if (state != const AuthState.loading()) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  }
                },
                child:
                    state == const AuthState.loading()
                        ? CircularProgressIndicator(color: kWhite)
                        : Icon(Icons.arrow_forward_ios_rounded, color: kWhite),
              ),
            ],
          ),
        );
      },
    );
  }
}
