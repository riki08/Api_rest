import 'package:api_rest/src/data/models/character.dart';
import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

class CharacterAPI {
  final dio.Dio _dio = Get.find<dio.Dio>();

  Future<List<Character>> getAllCharacters() async {
    final dio.Response response = await _dio.get('/api/character');

    return (response.data['results'] as List)
        .map((e) => Character.fromJson(e))
        .toList();
  }
}
