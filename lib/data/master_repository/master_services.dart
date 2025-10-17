import 'dart:convert';

import 'package:dio/dio.dart';

import '../../domain/models/master_data_model/datum.dart';
import '../dio_client.dart';
import '../endpoints.dart';
import 'master_interface.dart';

class MasterServices implements MasterInterface {
  final DioClient _client = DioClient();

  @override
  Future<List<Datum>> getJob(String token) async {
    try {
      final response = await _client.post(
        Endpoints.job,
        data: jsonEncode({}),
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );

      var data = response.data as Map<String, dynamic>;

      if (response.statusCode != 200) {
        throw data["result"]["error"]["message"];
      }

      var listAllProject = data["result"]["result"] as List<dynamic>;

      var models = Datum.fromJsonList(listAllProject);
      return models;
    } on DioException {
      return List<Datum>.empty();
    }
  }

  @override
  Future<List<Datum>> getCategory(String token) async {
    try {
      final response = await _client.post(
        Endpoints.category,
        data: jsonEncode({}),
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );

      var data = response.data as Map<String, dynamic>;

      if (response.statusCode != 200) {
        throw data["result"]["error"]["message"];
      }

      var listAllProject = data["result"]["data"] as List<dynamic>;

      var models = Datum.fromJsonList(listAllProject);
      return models;
    } on DioException {
      return List<Datum>.empty();
    }
  }

  @override
  Future<List<Datum>> getMerk(String token) async {
    try {
      final response = await _client.post(
        Endpoints.merk,
        data: jsonEncode({}),
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );

      var data = response.data as Map<String, dynamic>;

      if (response.statusCode != 200) {
        throw data["result"]["error"]["message"];
      }

      var listAllProject = data["result"]["data"] as List<dynamic>;

      var models = Datum.fromJsonList(listAllProject);
      return models;
    } on DioException {
      return List<Datum>.empty();
    }
  }
}
