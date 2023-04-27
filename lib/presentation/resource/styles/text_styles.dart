import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static const _fontMontserrat = 'Montserrat';
  static const _fontOpenSans = 'OpenSans';

  static const TextStyle displayLarge = TextStyle(
    fontFamily: _fontMontserrat,
    fontSize: 98,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  );

  static const TextStyle displayMedium = TextStyle(
    fontFamily: _fontMontserrat,
    fontSize: 60,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  );

  static const TextStyle displaySmall = TextStyle(
    fontFamily: _fontMontserrat,
    fontSize: 48,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle headlineLarge = TextStyle(
    fontFamily: _fontMontserrat,
    fontSize: 48,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontFamily: _fontMontserrat,
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontFamily: _fontMontserrat,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle titleLarge = TextStyle(
    fontFamily: _fontMontserrat,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
  );

  static const TextStyle titleMedium = TextStyle(
    fontFamily: _fontMontserrat,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  );

  static const TextStyle titleSmall = TextStyle(
    fontFamily: _fontMontserrat,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontFamily: _fontOpenSans,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: _fontOpenSans,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: _fontOpenSans,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  );

  static const TextStyle labelLarge = TextStyle(
    fontFamily: _fontOpenSans,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
  );

  static const TextStyle labelSmall = TextStyle(
    fontFamily: _fontOpenSans,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  );

  static const TextTheme textTheme = TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    labelSmall: labelSmall,
  );
}
