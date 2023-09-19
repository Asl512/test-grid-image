import 'package:redux/redux.dart';
import 'package:test_grid_images/domain/repositories/character_repository.dart';
import 'package:test_grid_images/ui/state_manager/character/actions.dart';
import 'package:test_grid_images/ui/state_manager/store.dart';

class CharacterMiddleware implements MiddlewareClass<AppState> {
  final CharacterRepository characterRepository;

  CharacterMiddleware({required this.characterRepository});

  @override
  call(store, action, next) {
    // List characters
    if (action is LoadCharacterListAction) {
      Future(() async {
        final characters = await characterRepository.getListCharacter(page: 0);
        if (characters != null) {
          store.dispatch(ShowCharacterListAction(
            characters: characters,
            page: 0,
          ));
        } else {
          store.dispatch(ErrorCharacterListAction(message: 'Error load characters'));
        }
      });
    }

    if (action is AddNextCharacterListAction) {
      Future(() async {
        final page = store.state.characterListState.page + 1;
        final charactersOld = store.state.characterListState.characters.toList();
        final characters = await characterRepository.getListCharacter(page: page);
        if ((characters ?? []).isEmpty) {
          store.dispatch(StopCharacterListAction());
        } else {
          charactersOld.addAll(characters!);
          store.dispatch(ShowCharacterListAction(
            characters: charactersOld,
            page: page,
          ));
        }
      });
    }

    next(action);
  }
}
