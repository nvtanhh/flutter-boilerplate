import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.primaryColor,
    required this.secondaryColor,
    required this.primaryTextColor,
    required this.secondaryTextColor,
    required this.success,
    required this.error,
    required this.warning,
    required this.inverseTextColor,
  });

  factory AppColors.lightThemeColors() {
    return const AppColors(
      primaryColor: AppColorsConstants.dark,
      secondaryColor: AppColorsConstants.blue,
      primaryTextColor: AppColorsConstants.white,
      secondaryTextColor: AppColorsConstants.gray,
      success: AppColorsConstants.green,
      error: AppColorsConstants.red,
      warning: AppColorsConstants.warning,
      inverseTextColor: AppColorsConstants.black,
    );
  }

  factory AppColors.darkThemeColors() {
    return const AppColors(
      primaryColor: AppColorsConstants.white,
      secondaryColor: AppColorsConstants.blue,
      primaryTextColor: AppColorsConstants.dark,
      secondaryTextColor: AppColorsConstants.gray,
      success: AppColorsConstants.green,
      error: AppColorsConstants.red,
      warning: AppColorsConstants.warning,
      inverseTextColor: AppColorsConstants.white,
    );
  }

  final Color primaryColor;
  final Color secondaryColor;
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color success;
  final Color error;
  final Color warning;
  final Color inverseTextColor;

  @override
  ThemeExtension<AppColors> copyWith({
    Color? primaryColor,
    Color? secondaryColor,
    Color? primaryTextColor,
    Color? secondaryTextColor,
    Color? success,
    Color? error,
    Color? warning,
    Color? inverseTextColor,
  }) {
    return AppColors(
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      primaryTextColor: primaryTextColor ?? this.primaryTextColor,
      secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
      success: success ?? this.success,
      error: error ?? this.error,
      warning: warning ?? this.warning,
      inverseTextColor: inverseTextColor ?? this.inverseTextColor,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(ThemeExtension<AppColors>? other, double t) {
    if (other == null || other is! AppColors) {
      return this;
    }

    return AppColors(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
      primaryTextColor: Color.lerp(primaryTextColor, other.primaryTextColor, t)!,
      secondaryTextColor: Color.lerp(secondaryTextColor, other.secondaryTextColor, t)!,
      success: Color.lerp(success, other.success, t)!,
      error: Color.lerp(error, other.error, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      inverseTextColor: Color.lerp(inverseTextColor, other.inverseTextColor, t)!,
    );
  }
}

class AppColorsConstants {
  const AppColorsConstants._();

  static const Color dark = Color(0xff222222);
  static const Color white = Color(0xffffffff);
  static const Color blue = Color(0xff0000ff);
  static const Color red = Color(0xffff0000);
  static const Color green = Color(0xff00ff00);
  static const Color lightBlue = Color(0xffaaaaff);

  static const Color primary = Color(0xff3FB1B4);
  static const Color darkBlue = Color(0xff2E374D);
  static const Color error = Color(0xffDC3444);
  static const Color black = Color(0xff1C1C1C);
  static const Color gray = Color(0xff6d6d7e);
  static const Color gray2 = Color(0xff8B8C8E);
  static const Color gray3 = Color(0xffcdcdcd);
  static const Color lightGray = Color(0xffF2F2F2);
  static const Color lightGray2 = Color(0xffF5F5F5);
  static const Color lightGray3 = Color(0xffECECEC);

  static const Color warning = Color(0xffFFC107);
}
