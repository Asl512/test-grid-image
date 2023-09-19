import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:test_grid_images/domain/services/get_it_service.dart';
import 'package:test_grid_images/ui/state_manager/character/actions.dart';
import 'package:test_grid_images/ui/state_manager/character/states.dart';
import 'package:test_grid_images/ui/state_manager/store.dart';
import 'package:test_grid_images/ui/widgets/character_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late Store<AppState> _store;

  @override
  void initState() {
    super.initState();
    _store = StoreProvider.of<AppState>(context, listen: false);
    if (_store.state.characterListState.characters.isEmpty) onLoadCharacters();
  }

  void onLoadCharacters() => _store.dispatch(LoadCharacterListAction());

  void onLoadNextPageNew() {
    if (!_store.state.characterListState.isLoadingNextPage &&
        _store.state.characterListState.isNextPageAvailable) {
      _store.dispatch(AddNextCharacterListAction(page: _store.state.characterListState.page));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          RefreshIndicator(
            onRefresh: () => Future(onLoadCharacters),
            child: _Body(onLoadNextPageNew: onLoadNextPageNew),
          ),
          Blur(
            blur: 5,
            blurColor: Theme.of(context).colorScheme.background,
            alignment: Alignment.bottomLeft,
            overlay: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              child: Text(
                'Characters',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            child: SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ],
      ),
    );
  }
}

class _Body extends StatefulWidget {
  final Function() onLoadNextPageNew;

  const _Body({
    Key? key,
    required this.onLoadNextPageNew,
  }) : super(key: key);

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels + 600 > scrollController.position.maxScrollExtent) {
        widget.onLoadNextPageNew();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CharacterListState>(
      converter: (store) => store.state.characterListState,
      builder: (BuildContext context, CharacterListState state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.white),
          );
        }
        if (state.isError) {
          return Center(
            child: Text(
              state.errorMessage,
              textAlign: TextAlign.center,
            ),
          );
        }

        return GridView.builder(
          controller: scrollController,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 110,
          ),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: state.characters.length,
          itemBuilder: (BuildContext ctx, index) {
            return CharacterCard(
              character: state.characters[index],
              onTap: () => GetItService.navigatorService.onCharacter(
                character: state.characters[index],
              ),
            );
          },
        );
      },
    );
  }
}
