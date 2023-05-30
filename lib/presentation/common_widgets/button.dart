import 'package:flutter/material.dart';

import '../../core/extensions/extensions.dart';
import '../resource/resource.dart';

class AppButton extends StatelessWidget {
  const AppButton.primary({
    super.key,
    this.label,
    this.icon,
    this.color,
    this.onPressed,
  })  : _primary = true,
        assert(
          label != null || icon != null,
          'Label or icon must be provided.',
        );

  const AppButton.secondary({
    super.key,
    this.label,
    this.icon,
    this.color,
    this.onPressed,
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

    return _primary
        ? ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: finalColor),
            onPressed: onPressed,
            child: child,
          )
        : OutlinedButton(
            style: OutlinedButton.styleFrom(backgroundColor: finalColor),
            onPressed: onPressed,
            child: child,
          );
  }
}
