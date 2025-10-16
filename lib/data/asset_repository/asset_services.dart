import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/models/asset_model/asset_model.dart';
import '../../domain/models/asset_model/datum.dart';
import '../../domain/models/error_model/error_model.dart';
import '../dio_client.dart';
import '../endpoints.dart';
import '../exeption.dart';
import 'asset_interface.dart';

class AssetServices implements AssetInterface {
  final DioClient _client = DioClient();

  @override
  Future<Either<bool, String>> assetMoving(
    String token,
    List<Map<String, dynamic>> asset,
  ) async {
    try {
      final response = await _client.post(
        Endpoints.assetMoving,
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
  Future<Either<AssetModel, String>> assetGet(
    String token,
    int start, {
    Map<String, dynamic> data = const {},
  }) async {
    try {
      final response = await _client.post(
        "${Endpoints.assetGet}/$start/20",
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
          return Left(AssetModel.fromJson(detail));
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
    } catch (e, stacktrace) {
      log(stacktrace.toString());
      final String errorMessage = DioExceptions.fromDioError(e).errorMessage();
      return Right(errorMessage);
    }
  }

  @override
  Future<Either<AssetModel, String>> assetGetAll(
    String token, {
    Map<String, dynamic> data = const {},
  }) async {
    try {
      final response = await _client.post(
        Endpoints.assetGet,
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
          return Left(AssetModel.fromJson(detail));
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
    } catch (e, stacktrace) {
      log(stacktrace.toString());
      final String errorMessage = DioExceptions.fromDioError(e).errorMessage();
      return Right(errorMessage);
    }
  }

  @override
  Future<Either<AssetModel, String>> assetGetSingle(
    String token,
    int id,
  ) async {
    try {
      final response = await _client.post(
        "${Endpoints.assetGet}/$id",
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
          return Left(AssetModel.fromJson(detail));
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
  Future<Either<int, String>> assetPost(
    String token,
    Map<String, dynamic> asset,
  ) async {
    try {
      final response = await _client.post(
        Endpoints.asset,
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
    } catch (e, stacktrace) {
      log(stacktrace.toString());
      final String errorMessage = DioExceptions.fromDioError(e).errorMessage();
      return Right(errorMessage);
    }
  }

  @override
  Future<Either<int, String>> assetPut(
    String token,
    Map<String, dynamic> data,
    int id,
  ) async {
    try {
      final response = await _client.put(
        "${Endpoints.asset}/$id",
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
  Future<Either<bool, String>> assetDelete(String token, int id) async {
    try {
      final response = await _client.delete(
        "${Endpoints.asset}/$id",
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
  Future<List<Datum>> assetDropdown(String token) async {
    try {
      final response = await _client.post(
        Endpoints.assetGet,
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
