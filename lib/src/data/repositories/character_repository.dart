import 'package:api_rest/src/data/models/character.dart';
import 'package:api_rest/src/data/providers/character_api.dart';
import 'package:get/get.dart';

class CharacterRepository {
  final CharacterAPI _characterAPI = Get.find<CharacterAPI>();

  Future<List<Character>> getAllCharacters() =>
      _characterAPI.getAllCharacters();
}
