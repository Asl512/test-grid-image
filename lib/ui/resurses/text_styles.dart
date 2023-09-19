import 'package:flutter/material.dart';

const _text = TextStyle(
  fontFamily: 'SFProDisplay',
);

class AppTextStyle {
  static final displayLarge = _text.copyWith(
    fontSize: 96.0,
    fontWeight: FontWeight.normal,
    letterSpacing: -1.5,
    height: 1.17,
  );

  static final displayMedium = _text.copyWith(
    fontSize: 60.0,
    fontWeight: FontWeight.normal,
    letterSpacing: -0.5,
    height: 1.2,
  );

  static final displaySmall = _text.copyWith(
    fontSize: 48.0,
    fontWeight: FontWeight.normal,
    height: 1.17,
  );

  static final headlineMedium = _text.copyWith(
    fontSize: 34.0,
    fontWeight: FontWeight.normal,
    height: 1.05,
  );

  static final headlineSmall = _text.copyWith(
    fontSize: 24.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.18,
    height: 1,
  );

  static final titleLarge = _text.copyWith(
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    height: 1.2,
  );

  static final titleMedium = _text.copyWith(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    height: 1.2,
  );

  static final titleSmall = _text.copyWith(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.1,
    height: 1.7,
  );

  static final bodyLarge = _text.copyWith(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
    height: 1.5,
  );

  static final bodyMedium = _text.copyWith(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    height: 1.2,
  );

  static final labelLarge = _text.copyWith(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.4,
    height: 1,
  );

  static final bodySmall = _text.copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.4,
    height: 1.3,
  );

  static final labelSmall = _text.copyWith(
    fontSize: 10.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.4,
    height: 1.6,
  );
}
