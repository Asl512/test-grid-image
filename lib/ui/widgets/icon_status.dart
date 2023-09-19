import 'package:flutter/material.dart';
import 'package:test_grid_images/domain/enums/status.dart';

class IconStatus extends StatelessWidget {
  final Status status;

  const IconStatus({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (status == Status.alive) {
      return const Icon(
        Icons.favorite,
        color: Colors.red,
      );
    } else if (status == Status.dead) {
      return const Icon(
        Icons.heart_broken_rounded,
        color: Colors.black,
      );
    }
    return const Icon(
      Icons.question_mark,
      color: Colors.white,
    );
  }
}
