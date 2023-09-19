import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:test_grid_images/data/models/character.dart';
import 'package:test_grid_images/data/network/api_urls.dart';
import 'package:test_grid_images/data/network/http_client.dart';
import 'package:test_grid_images/domain/repositories/character_repository.dart';

class ApiCharacterRepository implements CharacterRepository {
  final HttpClient _httpClient;

  ApiCharacterRepository(this._httpClient);

  @override
  Future<List<Character>?> getListCharacter({int? page}) async {
    try {
      final Map<String, dynamic> queryParameters = {};
      if (page != null) queryParameters['page'] = page;
      final response = await _httpClient.dio.get(
        ApiUrl.character,
        queryParameters: queryParameters,
      );
      final result = response.data!['results'] as List;
      return result.map((e) => Character.fromJson(e)).toList();
    } on DioException catch (e) {
      log('DioException: getListCharacter: $e');
      return null;
    }
  }
}
