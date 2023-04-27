import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/extensions/extensions.dart';
import '../resource/styles/styles.dart';

class AppDefaultLoading extends StatelessWidget {
  const AppDefaultLoading({
    super.key,
    this.color,
    this.size = Sizes.s32,
    this.strokeWidth = Sizes.s2,
  });

  final Color? color;
  final double size;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.square(
        dimension: size,
        child: Platform.isAndroid ? _buildAndroidLoading(context) : _buildIOSLoading(context),
      ),
    );
  }

  Widget _buildAndroidLoading(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(color ?? context.appColors.primaryColor),
      strokeWidth: strokeWidth,
    );
  }

  Widget _buildIOSLoading(BuildContext context) {
    return CupertinoActivityIndicator(
      color: color ?? context.appColors.primaryColor,
      radius: size / 2,
    );
  }
}
