import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../../data/dio_client.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

Future<String> downloadImageAndConvertToBase64(String imageUrl) async {
  try {
    final DioClient client = DioClient();
    // Download the image
    final response = await client.get(
      imageUrl.replaceFirst('http://', 'https://'),
      options: Options(responseType: ResponseType.bytes),
    );
    if (response.statusCode == 200) {
      // Get temporary directory
      final directory = await getTemporaryDirectory();
      final filePath = join(directory.path, 'downloaded_image.jpg');

      // Save the image to local storage

      final file = File(filePath);
      await file.writeAsBytes(response.data as List<int>);

      // Convert image to base64
      final bytes = await file.readAsBytes();
      final base64String = base64Encode(bytes);

      // Delete the image from local storage
      await file.delete();

      return base64String;
    } else {
      return "";
      // throw Exception('Failed to download image');
    }
  } catch (e) {
    return "";
    // throw Exception('Error: ${e.toString()}');
  }
}
