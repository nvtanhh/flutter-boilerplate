import 'package:flutter/material.dart';

import '../../core/extensions/all.dart';
import '../resource/styles/gaps.dart';

class AppDefaultLoading extends StatelessWidget {
  const AppDefaultLoading({
    super.key,
    this.color,
    this.size = Sizes.s24,
    this.strokeWidth = Sizes.s2,
  });

  final Color? color;
  final double size;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    final finalColor = color ?? context.appColors.primaryTextColor;

    return Center(
      heightFactor: 1,
      widthFactor: 1,
      child: SizedBox.square(
        dimension: size,
        child: CircularProgressIndicator.adaptive(
          backgroundColor: finalColor,
          strokeWidth: strokeWidth,
        ),
      ),
    );
  }
}
