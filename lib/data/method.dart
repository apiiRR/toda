import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../presentation/utils/injector.dart';

Future<Map<String, dynamic>> getDetailUser() async {
  Map<String, dynamic> data = {};

  SharedPreferences sharedPreferences = await locator
      .getAsync<SharedPreferences>();

  final String? acc = sharedPreferences.getString("account");
  if (acc != null) {
    data = jsonDecode(acc);
  }

  return data;
}

Future<Map<String, dynamic>> convertImageToBase64(String imageUrl) async {
  try {
    final response = await Dio().get(
      imageUrl,
      options: Options(responseType: ResponseType.bytes),
    );
    if (response.statusCode == 200) {
      final bytes = response.data;
      final base64String = base64Encode(bytes);
      return {"success": base64String};
    } else {
      return {"error": "response status code not 200"};
    }
  } catch (e) {
    return {"error": e.toString()};
  }
}
