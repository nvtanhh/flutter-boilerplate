import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'text_styles.dart';

/// define custom themes here
final lightTheme = ThemeData.light().copyWith(
  splashColor: Colors.transparent,
  extensions: <ThemeExtension<dynamic>>[AppColors.lightThemeColors()],
  textTheme: AppTextStyles.textTheme.apply(
    bodyColor: AppColors.lightThemeColors().primaryTextColor,
    displayColor: AppColors.lightThemeColors().primaryTextColor,
  ),
);

final darkTheme = ThemeData.dark().copyWith(
  splashColor: Colors.transparent,
  extensions: <ThemeExtension<dynamic>>[AppColors.darkThemeColors()],
  textTheme: AppTextStyles.textTheme.apply(
    bodyColor: AppColors.darkThemeColors().primaryTextColor,
    displayColor: AppColors.darkThemeColors().primaryTextColor,
  ),
);
