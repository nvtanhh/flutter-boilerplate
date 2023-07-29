import 'package:flutter/material.dart';

import '../../presentation/resource/styles/app_colors.dart';

extension TextStyleExtensions on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get regular => copyWith(fontWeight: FontWeight.normal);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
  TextStyle get primaryColor => copyWith(color: AppColorsConstants.primary);

  TextStyle toColor(Color color) => copyWith(color: color);
}
