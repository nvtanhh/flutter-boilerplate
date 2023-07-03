import 'package:flutter/material.dart';

import '../../core/extensions/context_extensions.dart';
import '../resource/resource.dart';

class AppButton extends StatelessWidget {
  const AppButton.primary({
    super.key,
    this.label,
    this.icon,
    this.color,
    this.onPressed,
    this.width,
    this.height,
  })  : _primary = true,
        assert(
          label != null || icon != null,
          'Label or icon must be provided.',
        );

  const AppButton.outline({
    super.key,
    this.label,
    this.icon,
    this.color,
    this.onPressed,
    this.width,
    this.height,
  })  : _primary = false,
        assert(
          label != null || icon != null,
          'Label or icon must be provided.',
        );

  final String? label;
  final Widget? icon;
  final Color? color;
  final VoidCallback? onPressed;
  final bool _primary;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final child = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) SizedBox.square(dimension: Sizes.s20, child: icon),
        if (icon != null && label != null) AppSpacing.gapW4,
        if (label != null) Text(label!, textAlign: TextAlign.center),
      ],
    );

    final finalColor = color ?? context.appColors.primaryColor;

    final button = _primary
        ? ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: finalColor),
            onPressed: onPressed,
            child: child,
          )
        : OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: finalColor),
              foregroundColor: finalColor,
            ),
            onPressed: onPressed,
            child: child,
          );

    return SizedBox(
      width: width,
      height: height,
      child: button,
    );
  }
}
