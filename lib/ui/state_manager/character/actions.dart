import 'package:test_grid_images/data/models/character.dart';

abstract class CharacterListAction {}

class LoadCharacterListAction extends CharacterListAction {}

class ShowCharacterListAction extends CharacterListAction {
  final List<Character> characters;
  final int page;

  ShowCharacterListAction({
    required this.characters,
    required this.page,
  });
}

class ErrorCharacterListAction extends CharacterListAction {
  final String message;

  ErrorCharacterListAction({required this.message});
}

class AddNextCharacterListAction extends CharacterListAction {
  final int page;

  AddNextCharacterListAction({required this.page});
}

class StopCharacterListAction extends CharacterListAction {}
