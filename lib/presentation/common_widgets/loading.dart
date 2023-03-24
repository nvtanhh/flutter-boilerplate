import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({
    super.key,
    required this.size,
    required this.color,
  });

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? _buildAndroid() : _buildIOS();
  }

  Widget _buildAndroid() {
    return Center(
      child: SizedBox.square(
        dimension: size,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(color),
        ),
      ),
    );
  }

  Widget _buildIOS() {
    return Center(
      child: SizedBox.square(
        dimension: size,
        child: CupertinoActivityIndicator(
          color: color,
          radius: size / 2,
        ),
      ),
    );
  }
}
