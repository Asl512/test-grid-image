import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:test_grid_images/data/models/character.dart';
import 'package:test_grid_images/domain/services/get_it_service.dart';
import 'package:test_grid_images/ui/widgets/cached_image.dart';
import 'package:test_grid_images/ui/widgets/dialogs/default_dialog.dart';
import 'package:test_grid_images/ui/widgets/dialogs/load_dialog.dart';
import 'package:test_grid_images/ui/widgets/dialogs/open_setting_dialog.dart';

class CharacterScreen extends StatelessWidget {
  final Character character;

  const CharacterScreen({
    Key? key,
    required this.character,
  }) : super(key: key);

  void _downloadImage(BuildContext context) async {
    _load(context);
    final dir = await GetItService.downloadImageUseCase(character.image);
    Future(() => Navigator.of(context).pop());
    if (dir != null) {
      final openResult = await OpenFile.open(dir);
      if (openResult.type == ResultType.fileNotFound || openResult.type == ResultType.error) {
        Future(() => _errorOpenImage(context));
      } else if (openResult.type == ResultType.permissionDenied) {
        Future(() => _openSetting(context));
      }
    } else {
      Future(() => _errorOpenImage(context));
    }
  }

  void _load(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const LoadDialog();
      },
    );
  }

  void _openSetting(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const OpenSettingsDialog();
      },
    );
  }

  void _errorOpenImage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const DefaultDialog(
          title: 'Упс!',
          content: 'Не удалось открыть фото, попробуйте позже',
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(character.name),
        actions: [
          IconButton(
            onPressed: () => _downloadImage(context),
            icon: const Icon(Icons.download),
          )
        ],
      ),
      body: InteractiveViewer(
        child: Center(
          child: CachedImage(
            url: character.image,
            size: MediaQuery.of(context).size.width,
          ),
        ),
      ),
    );
  }
}
