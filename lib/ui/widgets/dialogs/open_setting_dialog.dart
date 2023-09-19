import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:test_grid_images/ui/widgets/dialogs/default_dialog.dart';

class OpenSettingsDialog extends StatelessWidget {
  const OpenSettingsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultDialog(
      title: 'Настройка',
      content:
          'Приложение запрашивает доступ к вашей библиотеке медиафайлов, чтобы загрузить медиафайлы. Пожалуйста разрешите доступ к медиафайлам приложения.',
      textButton: 'Перейти в настройки',
      onPress: () async {
        final storageStatus = await Permission.storage.status;
        if (storageStatus.isDenied) {
          await Permission.storage.request();
          if (storageStatus.isDenied) {
            final manageStatus = await Permission.manageExternalStorage.request();
            if (manageStatus.isDenied) await openAppSettings();
          }
        }
        Future(() => Navigator.of(context).pop());
      },
    );
  }
}
