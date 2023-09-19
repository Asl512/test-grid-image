import 'package:get_it/get_it.dart';
import 'package:test_grid_images/domain/services/navigator/navigator_service.dart';
import 'package:test_grid_images/domain/usecases/download_image_usecase.dart';

class GetItService {
  static final getIt = GetIt.instance;

  static NavigatorService navigatorService = getIt.get<NavigatorService>();

  static DownloadImageUseCase downloadImageUseCase = getIt.get<DownloadImageUseCase>();
}
