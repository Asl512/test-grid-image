import 'package:flutter/material.dart';

class DefaultDialog extends StatelessWidget {
  final String title;
  final String content;
  final String? textButton;
  final Function()? onPress;

  const DefaultDialog({
    Key? key,
    required this.title,
    required this.content,
    this.textButton,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      content: Text(
        content,
        textAlign: TextAlign.center,
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 60),
          ),
          onPressed: onPress ?? Navigator.of(context).pop,
          child: Text(textButton ?? 'Ок'),
        ),
      ],
      actionsPadding: const EdgeInsets.only(bottom: 15),
    );
  }
}
