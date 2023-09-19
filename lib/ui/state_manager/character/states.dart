import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_grid_images/data/models/character.dart';

part 'states.freezed.dart';

@freezed
class CharacterListState with _$CharacterListState {
  factory CharacterListState([
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(0) int page,
    @Default('') String errorMessage,
    @Default([]) List<Character> characters,
    @Default(true) bool isNextPageAvailable,
    @Default(false) bool isLoadingNextPage,
  ]) = _CharacterListState;
}
