import 'package:flutter/material.dart';

import '../../core/extensions/all.dart';
import '../resource/styles/app_colors.dart';

mixin AppThemeMixin<T extends StatefulWidget> on State<T> {
  AppColors get colorTheme => context.appColors;
  TextTheme get textTheme => context.textTheme;
}
