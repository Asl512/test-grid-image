import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_grid_images/ui/resurses/colors.dart';
import 'package:test_grid_images/ui/resurses/text_styles.dart';

final themeData = ThemeData(
  appBarTheme: AppBarTheme(
    elevation: 0.0,
    backgroundColor: AppColor.backgroundColor.withOpacity(.5),
    titleTextStyle: AppTextStyle.titleLarge.copyWith(color: AppColor.textColor),
    iconTheme: const IconThemeData(color: AppColor.textColor),
    systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
  scaffoldBackgroundColor: AppColor.backgroundColor,
  textTheme: TextTheme(
    displayLarge: AppTextStyle.displayLarge.copyWith(color: AppColor.textColor),
    displayMedium: AppTextStyle.displayMedium.copyWith(color: AppColor.textColor),
    displaySmall: AppTextStyle.displaySmall.copyWith(color: AppColor.textColor),
    headlineMedium: AppTextStyle.headlineMedium.copyWith(color: AppColor.textColor),
    headlineSmall: AppTextStyle.headlineSmall.copyWith(color: AppColor.textColor),
    titleLarge: AppTextStyle.titleLarge.copyWith(color: AppColor.textColor),
    titleMedium: AppTextStyle.titleMedium.copyWith(color: AppColor.textColor),
    titleSmall: AppTextStyle.titleSmall.copyWith(color: AppColor.textColor),
    bodyLarge: AppTextStyle.bodyLarge.copyWith(color: AppColor.textColor),
    bodyMedium: AppTextStyle.bodyMedium.copyWith(color: AppColor.textColor),
    labelLarge: AppTextStyle.labelLarge.copyWith(color: AppColor.textColor),
    bodySmall: AppTextStyle.bodySmall.copyWith(color: AppColor.textColor),
    labelSmall: AppTextStyle.labelSmall.copyWith(color: AppColor.textColor),
  ),
  colorScheme: const ColorScheme.light(
    primary: AppColor.primaryColor,
    background: AppColor.backgroundColor,
  ),
);
