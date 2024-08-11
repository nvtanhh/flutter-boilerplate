import 'package:flutter/material.dart';

import '../../core/extensions/all.dart';
import '../resource/styles/gaps.dart';
import 'app_icon.dart';

enum ToastType {
  neutral,
  success,
  error,
}

class AppToast extends StatelessWidget {
  final ToastType type;
  final String message;
  final TextStyle? textStyle;
  final Widget? footer;
  final Color? bgColor;
  final Color? icColor;
  final VoidCallback? onClosedByUser;

  const AppToast({
    required this.type,
    required this.message,
    super.key,
    this.textStyle,
    this.bgColor,
    this.icColor,
    this.footer,
    this.onClosedByUser,
  });

  factory AppToast.neutral(
    String message, {
    TextStyle? textStyle,
    Widget? footer,
    VoidCallback? onClosedByUser,
  }) {
    return AppToast(
      type: ToastType.neutral,
      message: message,
      textStyle: textStyle,
      footer: footer,
      onClosedByUser: onClosedByUser,
    );
  }

  factory AppToast.success(
    String message, {
    TextStyle? textStyle,
    Widget? footer,
    VoidCallback? onClosedByUser,
  }) {
    return AppToast(
      type: ToastType.success,
      message: message,
      textStyle: textStyle,
      footer: footer,
      onClosedByUser: onClosedByUser,
    );
  }

  factory AppToast.error(
    String message, {
    TextStyle? textStyle,
    Color? bgColor,
    Widget? footer,
    VoidCallback? onCloseButtonClicked,
  }) {
    return AppToast(
      type: ToastType.error,
      message: message,
      textStyle: textStyle,
      footer: footer,
      bgColor: bgColor,
      onClosedByUser: onCloseButtonClicked,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.s4,
        vertical: Sizes.s16,
      ),
      decoration: BoxDecoration(
        color: bgColor ?? getBgColor(context, type),
        borderRadius: AppRadius.borderRadius8,
      ),
      child: Builder(
        builder: (_) {
          final child = Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSpacing.gapW12,
              _buildIcon(context),
              Flexible(child: _buildMessage(context)),
              if (onClosedByUser != null) _buildCloseButton(context),
            ],
          );

          if (footer != null) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                child,
                AppSpacing.gapH8,
                Padding(
                  padding: AppSpacing.edgeInsetsOnlyLeft24,
                  child: footer!,
                ),
              ],
            );
          }

          return child;
        },
      ),
    );
  }

  Text _buildMessage(BuildContext context) {
    final style = context.textTheme.bodyMedium!
        .copyWith(
          color: _getTextColor(context),
          decoration: TextDecoration.none,
        )
        .merge(textStyle);

    return Text(
      message,
      style: style,
      textAlign: TextAlign.justify,
    );
  }

  Widget _buildIcon(BuildContext context) {
    final icon = _getIcon();

    if (icon == null) {
      return AppSpacing.gapW4;
    }

    return Padding(
      padding: AppSpacing.edgeInsetsOnlyRight12,
      child: AppIcon(
        icon: icon,
        size: Sizes.s20,
        color: icColor ?? getIcColor(context, type),
      ),
    );
  }

  // Using object because icon can be IconData, SvgGenImage, AssetGenImage, Widget
  // ignore: no-object-declaration
  Object? _getIcon() {
    switch (type) {
      case ToastType.neutral:
        return null;
      case ToastType.success:
        return AppIcons.checkCircle;
      case ToastType.error:
        return AppIcons.warning;
    }
  }

  static Color getIcColor(BuildContext context, ToastType type) {
    return switch (type) {
      _ => context.appColors.secondaryTextColor,
    };
  }

  static Color getBgColor(BuildContext context, ToastType type) {
    return switch (type) {
      ToastType.neutral => context.appColors.secondaryColor,
      ToastType.success => context.appColors.success,
      ToastType.error => context.appColors.error,
    };
  }

  Color _getTextColor(BuildContext context) {
    return switch (type) { _ => context.appColors.inverseTextColor };
  }

  Widget _buildCloseButton(BuildContext context) {
    return AppIcon(
      padding: AppSpacing.edgeInsetsH12,
      icon: AppIcons.close,
      size: Sizes.s20,
      color: _getCloseButtonColor(context),
      onTap: onClosedByUser,
    );
  }

  Color _getCloseButtonColor(BuildContext context) {
    return switch (type) {
      _ => context.appColors.inverseTextColor,
    };
  }
}
