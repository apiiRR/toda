import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/models/error_model/error_model.dart';
import '../../domain/models/location_model/datum.dart';
import '../../domain/models/location_model/location_model.dart';
import '../dio_client.dart';
import '../endpoints.dart';
import '../exeption.dart';
import 'location_interface.dart';

class LocationServices implements LocationInterface {
  final DioClient _client = DioClient();

  @override
  Future<Either<LocationModel, String>> locationGet(
    String token, {
    Map<String, dynamic> data = const {},
  }) async {
    try {
      final response = await _client.post(
        Endpoints.locationGet,
        data: jsonEncode(data),
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> detail =
            response.data as Map<String, dynamic>;
        if (detail["result"] != null) {
          return Left(LocationModel.fromJson(detail));
        } else {
          ErrorModel errorData = ErrorModel.fromJson(response.data);
          List<String> errorMessageSplited = errorData.error!.data!.message!
              .split("\n");
          return Right(errorMessageSplited[0]);
        }
      } else {
        ErrorModel errorData = ErrorModel.fromJson(response.data);
        List<String> errorMessageSplited = errorData.error!.message!.split(
          "\n",
        );
        return Right(errorMessageSplited[0]);
      }
    } catch (e) {
      final String errorMessage = DioExceptions.fromDioError(e).errorMessage();
      return Right(errorMessage);
    }
  }

  @override
  Future<Either<LocationModel, String>> locationGetSingle(
    String token,
    int id,
  ) async {
    try {
      final response = await _client.post(
        "${Endpoints.locationGet}/$id",
        data: jsonEncode({}),
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> detail =
            response.data as Map<String, dynamic>;
        if (detail["result"] != null) {
          return Left(LocationModel.fromJson(detail));
        } else {
          ErrorModel errorData = ErrorModel.fromJson(response.data);
          List<String> errorMessageSplited = errorData.error!.data!.message!
              .split("\n");
          return Right(errorMessageSplited[0]);
        }
      } else {
        ErrorModel errorData = ErrorModel.fromJson(response.data);
        List<String> errorMessageSplited = errorData.error!.message!.split(
          "\n",
        );
        return Right(errorMessageSplited[0]);
      }
    } catch (e) {
      final String errorMessage = DioExceptions.fromDioError(e).errorMessage();
      return Right(errorMessage);
    }
  }

  @override
  Future<Either<int, String>> locationPost(
    String token,
    Map<String, dynamic> asset,
  ) async {
    try {
      final response = await _client.post(
        Endpoints.location,
        data: jsonEncode({"data": asset}),
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> detail =
            response.data as Map<String, dynamic>;
        if (detail["result"] != null) {
          return Left(detail["result"]["data"]["order_id"][0]);
        } else {
          ErrorModel errorData = ErrorModel.fromJson(response.data);
          List<String> errorMessageSplited = errorData.error!.data!.message!
              .split("\n");
          return Right(errorMessageSplited[0]);
        }
      } else {
        ErrorModel errorData = ErrorModel.fromJson(response.data);
        List<String> errorMessageSplited = errorData.error!.message!.split(
          "\n",
        );
        return Right(errorMessageSplited[0]);
      }
    } catch (e) {
      final String errorMessage = DioExceptions.fromDioError(e).errorMessage();
      return Right(errorMessage);
    }
  }

  @override
  Future<Either<int, String>> locationPut(
    String token,
    Map<String, dynamic> data,
    int id,
  ) async {
    try {
      final response = await _client.put(
        "${Endpoints.location}/$id",
        data: jsonEncode({"data": data}),
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> detail =
            response.data as Map<String, dynamic>;
        if (detail["result"] != null) {
          return Left(id);
        } else {
          ErrorModel errorData = ErrorModel.fromJson(response.data);
          List<String> errorMessageSplited = errorData.error!.data!.message!
              .split("\n");
          return Right(errorMessageSplited[0]);
        }
      } else {
        ErrorModel errorData = ErrorModel.fromJson(response.data);
        List<String> errorMessageSplited = errorData.error!.message!.split(
          "\n",
        );
        return Right(errorMessageSplited[0]);
      }
    } catch (e) {
      final String errorMessage = DioExceptions.fromDioError(e).errorMessage();
      return Right(errorMessage);
    }
  }

  @override
  Future<Either<bool, String>> locationDelete(String token, int id) async {
    try {
      final response = await _client.delete(
        "${Endpoints.location}/$id",
        data: {},
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> detail =
            response.data as Map<String, dynamic>;
        if (detail["result"] != null) {
          return const Left(true);
        } else {
          ErrorModel errorData = ErrorModel.fromJson(response.data);
          List<String> errorMessageSplited = errorData.error!.data!.message!
              .split("\n");
          return Right(errorMessageSplited[0]);
        }
      } else {
        ErrorModel errorData = ErrorModel.fromJson(response.data);
        List<String> errorMessageSplited = errorData.error!.message!.split(
          "\n",
        );
        return Right(errorMessageSplited[0]);
      }
    } catch (e) {
      final String errorMessage = DioExceptions.fromDioError(e).errorMessage();
      return Right(errorMessage);
    }
  }

  @override
  Future<List<Datum>> locationDropdown(String token) async {
    try {
      final response = await _client.post(
        Endpoints.locationGet,
        data: jsonEncode({}),
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> detail =
            response.data as Map<String, dynamic>;
        if (detail["result"] != null) {
          return Datum.fromJsonList(detail["result"]["data"]);
        } else {
          return List<Datum>.empty();
        }
      } else {
        return List<Datum>.empty();
      }
    } on DioException {
      return List<Datum>.empty();
    }
  }
}
