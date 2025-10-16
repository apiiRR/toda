import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/models/error_model/error_model.dart';
import '../../domain/models/login_model/login_model.dart';
import '../../domain/models/profile_model/profile_model.dart';
import '../dio_client.dart';
import '../endpoints.dart';
import '../exeption.dart';
import 'auth_interface.dart';

class AuthServices implements AuthInterface {
  final DioClient _client = DioClient();

  @override
  Future<Either<LoginModel, String>> login(Map data) async {
    final response = await _client.post(Endpoints.login,
        data: jsonEncode(data),
        options: Options(headers: {
          "Content-Type": "application/json",
        }));

    if (response.statusCode == 200) {
      final Map<String, dynamic> detail = response.data as Map<String, dynamic>;
      if (detail["result"] != null) {
        return Left(LoginModel.fromJson(detail["result"]["data"]));
      } else {
        ErrorModel errorData = ErrorModel.fromJson(response.data);
        List<String> errorMessageSplited =
            errorData.error!.data!.message!.split("\n");
        return Right(errorMessageSplited[0]);
      }
    } else {
      ErrorModel errorData = ErrorModel.fromJson(response.data);
      List<String> errorMessageSplited = errorData.error!.message!.split("\n");
      return Right(errorMessageSplited[0]);
    }
  }

  @override
  Future<Either<ProfileModel, String>> profile(String token) async {
    try {
      final response = await _client.post(Endpoints.profil,
          data: jsonEncode({}),
          options: Options(headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token"
          }));

      if (response.statusCode == 200) {
        final Map<String, dynamic> detail =
            response.data as Map<String, dynamic>;
        if (detail["result"] != null) {
          return Left(ProfileModel.fromJson(detail["result"]["data"][0]));
        } else {
          ErrorModel errorData = ErrorModel.fromJson(response.data);
          List<String> errorMessageSplited =
              errorData.error!.message!.split("\n");
          return Right(errorMessageSplited[0]);
        }
      } else {
        ErrorModel errorData = ErrorModel.fromJson(response.data);
        List<String> errorMessageSplited =
            errorData.error!.message!.split("\n");
        return Right(errorMessageSplited[0]);
      }
    } on DioException catch (e) {
      final String errorMessage = DioExceptions.fromDioError(e).errorMessage();
      return Right(errorMessage);
    }
  }

  // @override
  // Future<Either<Map<String, dynamic>, String>> register(
  //     Map<String, dynamic> data) async {
  //   try {
  //     final response =
  //         await _client.post(Endpoints.register,
  //             data: jsonEncode(data.toJson()),
  //             options: Options(headers: {
  //               "Content-Type": "application/json",
  //             }));

  //     if (response.statusCode == 200) {
  //       final Map<String, dynamic> detail =
  //           response.data as Map<String, dynamic>;
  //       if (detail["result"] != null) {
  //         return Left(detail["result"]);
  //       } else {
  //         return Right(detail["error"]["data"]["message"]);
  //       }
  //     } else {
  //       final String errorMessage =
  //           DioExceptions.fromDioError(response).errorMessage();
  //       return Right(errorMessage);
  //     }
  //   } on DioException catch (e) {
  //     final String errorMessage = DioExceptions.fromDioError(e).errorMessage();
  //     return Right(errorMessage);
  //   }
  // }
}
