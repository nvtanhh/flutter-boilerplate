import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDefaultLoading extends StatelessWidget {
  const AppDefaultLoading({
    required this.size,
    required this.color,
    required this.strokeWidth,
    super.key,
  });

  final double size;
  final Color color;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.square(
        dimension: size,
        child: Platform.isAndroid ? _buildAndroidLoading() : _buildIOSLoading(),
      ),
    );
  }

  Widget _buildAndroidLoading() {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(color),
    );
  }

  Widget _buildIOSLoading() {
    return CupertinoActivityIndicator(
      color: color,
      radius: size / 2,
    );
  }
}
