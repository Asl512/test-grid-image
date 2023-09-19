import 'package:flutter/material.dart';
import 'package:test_grid_images/domain/enums/gender.dart';

class IconGender extends StatelessWidget {
  final Gender gender;

  const IconGender({
    Key? key,
    required this.gender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (gender == Gender.male) {
      return const Icon(
        Icons.male,
        color: Colors.blue,
      );
    } else if (gender == Gender.female) {
      return const Icon(
        Icons.female,
        color: Colors.pink,
      );
    }
    return const Icon(
      Icons.question_mark,
      color: Colors.white,
    );
  }
}
