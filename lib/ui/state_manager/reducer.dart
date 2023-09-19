import 'package:test_grid_images/ui/state_manager/character/actions.dart';
import 'package:test_grid_images/ui/state_manager/character/reducers.dart';
import 'package:test_grid_images/ui/state_manager/store.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is CharacterListAction) {
    final nextState = characterListReducer(state.characterListState, action);
    return state.copyWith(characterListState: nextState);
  }
  return state;
}
