import 'package:flutter/material.dart';

import 'app_colors.dart';

/// define custom themes here
final lightTheme = ThemeData.light().copyWith(
  splashColor: Colors.transparent,
  extensions: <ThemeExtension<dynamic>>[AppColors.lightThemeColors()],
);

final darkTheme = ThemeData.dark().copyWith(
  splashColor: Colors.transparent,
  extensions: <ThemeExtension<dynamic>>[AppColors.darkThemeColors()],
);

extension ThemeDataExtensions on ThemeData {
  AppColors get appColors => extension<AppColors>()!;
}
