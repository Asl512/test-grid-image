import 'package:redux/redux.dart';
import 'package:test_grid_images/ui/state_manager/character/actions.dart';
import 'package:test_grid_images/ui/state_manager/character/states.dart';

final characterListReducer = combineReducers<CharacterListState>([
  TypedReducer<CharacterListState, LoadCharacterListAction>(_loadCharacterList),
  TypedReducer<CharacterListState, ShowCharacterListAction>(_showCharacterList),
  TypedReducer<CharacterListState, ErrorCharacterListAction>(_errorCharacterList),
  TypedReducer<CharacterListState, StopCharacterListAction>(_stopCharacterList),
  TypedReducer<CharacterListState, AddNextCharacterListAction>(_addNextCharacterList),
]);

//List characters

CharacterListState _loadCharacterList(
  CharacterListState state,
  LoadCharacterListAction action,
) =>
    state.copyWith(
      isLoading: true,
      isError: false,
      isLoadingNextPage: true,
      isNextPageAvailable: true,
    );

CharacterListState _stopCharacterList(
  CharacterListState state,
  StopCharacterListAction action,
) =>
    state.copyWith(
      isNextPageAvailable: false,
      isLoadingNextPage: false,
    );

CharacterListState _addNextCharacterList(
  CharacterListState state,
  AddNextCharacterListAction action,
) =>
    state.copyWith(
      isLoading: false,
      isLoadingNextPage: true,
      isError: false,
    );

CharacterListState _showCharacterList(
  CharacterListState state,
  ShowCharacterListAction action,
) =>
    state.copyWith(
      isLoading: false,
      isError: false,
      characters: action.characters,
      page: action.page,
      isLoadingNextPage: false,
    );

CharacterListState _errorCharacterList(
  CharacterListState state,
  ErrorCharacterListAction action,
) =>
    state.copyWith(
      isLoading: false,
      isError: true,
      errorMessage: action.message,
      isLoadingNextPage: false,
    );
