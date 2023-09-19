import 'package:test_grid_images/data/models/character.dart';

abstract class CharacterRepository {
  Future<List<Character>?> getListCharacter({int? page});
}
