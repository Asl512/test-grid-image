import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';
import 'package:test_grid_images/data/network/dio_http_client.dart';
import 'package:test_grid_images/data/repositories/api_character_repository.dart';
import 'package:test_grid_images/data/repositories/api_image_repository.dart';
import 'package:test_grid_images/domain/repositories/character_repository.dart';
import 'package:test_grid_images/domain/repositories/image_repository.dart';
import 'package:test_grid_images/domain/services/navigator/navigator_service.dart';
import 'package:test_grid_images/domain/usecases/download_image_usecase.dart';
import 'package:test_grid_images/ui/state_manager/character/middlewares.dart';
import 'package:test_grid_images/ui/state_manager/character/states.dart';
import 'package:test_grid_images/ui/state_manager/reducer.dart';
import 'package:test_grid_images/ui/state_manager/store.dart';

class LocatorService {
  final _getIt = GetIt.instance;
  final navigatorKey = GlobalKey<NavigatorState>();
  final _httpClient = DioHttpClient();

  late CharacterRepository _characterRepository;
  late ImageRepository _imageRepository;
  late Store<AppState> store;
  late NavigatorService _navigatorService;

  late DownloadImageUseCase _downloadImageUseCase;

  LocatorService() {
    _init();
  }

  void _init() {
    _navigatorService = NavigatorService(navigatorKey: navigatorKey);
    _characterRepository = ApiCharacterRepository(_httpClient);
    _imageRepository = ApiImageRepository(_httpClient);

    _downloadImageUseCase = DownloadImageUseCase(_imageRepository);

    store = Store(
      appReducer,
      initialState: AppState(
        characterListState: CharacterListState(),
      ),
      middleware: [
        CharacterMiddleware(characterRepository: _characterRepository),
      ],
    );

    _register();
  }

  void _register() {
    _getIt.registerSingleton<NavigatorService>(_navigatorService);
    _getIt.registerSingleton<DownloadImageUseCase>(_downloadImageUseCase);
  }
}
