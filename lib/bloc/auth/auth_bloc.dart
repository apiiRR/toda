import 'dart:convert';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/auth_repository/auth_services.dart';
import '../../data/method.dart';
import '../../domain/models/login_model/login_model.dart';
import '../../domain/models/profile_model/profile_model.dart';
import '../../presentation/utils/injector.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthServices service = AuthServices();

  AuthBloc() : super(const _Initial()) {
    on<_Login>((event, emit) async {
      try {
        emit(const AuthState.loading());

        SharedPreferences sharedPreferences =
            await locator.getAsync<SharedPreferences>();

        LoginModel? data;
        ProfileModel? detailUser;

        final login = await service.login({
          "username": event.data["username"],
          "password": event.data["password"],
        });

        login.fold(
          (l) {
            data = l;
          },
          (r) {
            if (r == "Access Denied") {
              throw ("Email atau Password anda salah");
            } else {
              throw (r);
            }
          },
        );

        final getUser = await service.profile(data!.refreshToken!);

        getUser.fold(
          (l) {
            detailUser = l;
          },
          (r) {
            throw (r);
          },
        );

        final userData = jsonEncode({
          'token': data!.refreshToken,
          'name': detailUser!.name,
          'id': detailUser!.id,
          'uid': data!.token!.uid,
          'user': data!.token!.user,
        });
        sharedPreferences.setString('account', userData);
        emit(const AuthState.success());
      } catch (e, stacktrace) {
        log(stacktrace.toString());
        emit(AuthState.error(e.toString()));
      }
    });
    on<_AuthDetail>((event, emit) async {
      try {
        emit(const AuthState.loading());
        final Map<String, dynamic> dataUser = await getDetailUser();

        final getUser = await service.profile(dataUser["token"]);
        getUser.fold(
          (l) {
            emit(AuthState.profile(l));
          },
          (r) {
            throw (r);
          },
        );
      } catch (e) {
        emit(AuthState.error(e.toString()));
      }
    });

    on<_LogOut>((event, emit) async {
      emit(const AuthState.loading());

      SharedPreferences sharedPreferences =
          await locator.getAsync<SharedPreferences>();

      sharedPreferences.remove('account');
      sharedPreferences.clear();
      emit(const AuthState.success());
    });

    on<_CheckSignInStatus>((event, emit) async {
      emit(const AuthState.loading());

      SharedPreferences sharedPreferences =
          await locator.getAsync<SharedPreferences>();

      String? account = sharedPreferences.getString('account');

      if (account != null) {
        emit(const AuthState.signedIn());
      } else {
        emit(const AuthState.signedOut());
      }
    });
  }
}
