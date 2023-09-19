import 'package:test_grid_images/domain/repositories/image_repository.dart';

class DownloadImageUseCase {
  final ImageRepository _imageRepository;

  DownloadImageUseCase(this._imageRepository);

  Future<String?> call(String image) {
    return _imageRepository.downloadImage(url: image);
  }
}
