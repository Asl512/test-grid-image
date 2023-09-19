import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:test_grid_images/data/network/api_urls.dart';
import 'package:test_grid_images/data/network/http_client.dart';
import 'package:test_grid_images/domain/repositories/image_repository.dart';

// ignore: depend_on_referenced_packages
import 'package:path_provider/path_provider.dart';

class ApiImageRepository implements ImageRepository {
  final HttpClient _httpClient;

  ApiImageRepository(this._httpClient);

  @override
  Future<String?> downloadImage({required String url}) async {
    try {
      final name = url.split('/').last;
      final directory = await getApplicationDocumentsDirectory();
      final savePath = '${directory.path}/$name';
      await _httpClient.dio.download(
        '${ApiUrl.avatar}/$name',
        savePath,
      );
      return savePath;
    } on DioException catch (e) {
      log('DioException: downloadImage: $e');
      return null;
    }
  }
}
