import 'package:flutter/material.dart';

import '../../core/extensions/extensions.dart';
import '../resource/resource.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    required this.icon,
    super.key,
    this.color,
    this.backgroundColor,
    this.size = Sizes.s24,
    this.padding,
    this.onTap,
    this.isCircle = false,
  });

  final Object icon;
  final Color? color;
  final Color? backgroundColor;
  final double? size;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final bool isCircle;

  @override
  Widget build(BuildContext context) {
    Widget? iconWidget;

    final iconColor = color ?? AppColorsConstants.dark;
    if (icon is IconData) {
      iconWidget = Icon(
        icon as IconData,
        color: iconColor,
        size: size,
      );
    } else if (icon is SvgGenImage) {
      iconWidget = (icon as SvgGenImage).svg(
        width: size,
        height: size,
        colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
      );
    } else if (icon is AssetGenImage) {
      iconWidget = (icon as AssetGenImage).image(
        width: size,
        height: size,
      );
    } else if (icon is Widget) {
      iconWidget = icon as Widget;
    }

    iconWidget = Padding(
      padding: padding ?? EdgeInsets.zero,
      child: iconWidget,
    );

    if (isCircle) {
      iconWidget = Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Center(child: iconWidget),
      );
    }

    if (onTap != null) {
      return iconWidget.clickable(onTap!);
    }

    return iconWidget;
  }
}

class AppIcons {
  const AppIcons._();

  static SvgGenImage arrowLeft = Assets.icons.arrowLeftRegular;
  static SvgGenImage chat = Assets.icons.messageDotsSolid;
  static SvgGenImage eyeRegular = Assets.icons.eyeRegular;
  static SvgGenImage eyeOffRegular = Assets.icons.eyeSlashRegular;
  static SvgGenImage homeRegular = Assets.icons.houseRegular;
  static SvgGenImage menuRegular = Assets.icons.barsRegular;
  static SvgGenImage send = Assets.icons.paperPlaneTopSolid;
  static SvgGenImage emoji = Assets.icons.faceSmileLight;

  static const IconData close = Icons.close;
  static const IconData play = Icons.play_arrow;
}
