import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_grid_images/ui/state_manager/character/states.dart';

part 'store.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    //Character
    required CharacterListState characterListState,
  }) = _AppState;
}
