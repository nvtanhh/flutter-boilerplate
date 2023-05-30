import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/extensions/extensions.dart';
import '../resource/styles/styles.dart';
import 'common_widgets.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  CommonAppBar({
    Key? key,
    this.text,
    this.onLeadingPressed,
    this.onTitlePressed,
    this.leadingIcon = LeadingIcon.back,
    this.titleType = AppBarTitle.text,
    this.centerTitle,
    this.elevation = 0,
    this.actions,
    this.height,
    this.automaticallyImplyLeading = true,
    this.flexibleSpace,
    this.bottom,
    this.shadowColor,
    this.shape,
    this.backgroundColor = Colors.white,
    this.foregroundColor,
    this.iconTheme,
    this.actionsIconTheme,
    this.primary = true,
    this.excludeHeaderSemantics = false,
    this.titleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
    this.leadingWidth,
    this.titleTextStyle,
    this.systemOverlayStyle,
    this.leadingIconColor,
  })  : preferredSize = Size.fromHeight(height ?? Sizes.s56),
        super(key: key);

  final String? text;
  final VoidCallback? onLeadingPressed;
  final VoidCallback? onTitlePressed;
  final LeadingIcon leadingIcon;
  final AppBarTitle titleType;
  final bool? centerTitle;
  final double elevation;
  final List<Widget>? actions;
  final double? height;
  final bool automaticallyImplyLeading;
  final Widget? flexibleSpace;
  final PreferredSizeWidget? bottom;
  final Color? shadowColor;
  final ShapeBorder? shape;
  final Color backgroundColor;
  final Color? foregroundColor;
  final IconThemeData? iconTheme;
  final IconThemeData? actionsIconTheme;
  final bool primary;
  final bool excludeHeaderSemantics;
  final double? titleSpacing;
  final double toolbarOpacity;
  final double bottomOpacity;
  final double? leadingWidth;
  final TextStyle? titleTextStyle;
  final Color? leadingIconColor;
  final SystemUiOverlayStyle? systemOverlayStyle;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: preferredSize.height,
      automaticallyImplyLeading: automaticallyImplyLeading,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      shadowColor: shadowColor,
      shape: shape,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      primary: primary,
      excludeHeaderSemantics: excludeHeaderSemantics,
      titleSpacing: titleSpacing,
      toolbarOpacity: toolbarOpacity,
      bottomOpacity: bottomOpacity,
      leadingWidth: leadingWidth,
      systemOverlayStyle: systemOverlayStyle,
      leading: leadingIcon == LeadingIcon.none ? null : _buildLeadingIcon().clickable(onLeadingPressed ?? context.pop),
      centerTitle: centerTitle,
      title: GestureDetector(
        onTap: onTitlePressed,
        behavior: HitTestBehavior.translucent,
        child: titleType == AppBarTitle.text ? Text(text ?? '', style: _getAppBarTextStyle()) : null,
      ),
      actions: actions,
      elevation: elevation,
    );
  }

  Widget _buildLeadingIcon() {
    if (!automaticallyImplyLeading) {
      return AppSpacing.emptyBox;
    }

    if (leadingIcon == LeadingIcon.logo) {
      return _buildLeadingLogo();
    }

    Object? icon;
    switch (leadingIcon) {
      case LeadingIcon.back:
        icon = AppIcons.arrowLeft;
        break;
      case LeadingIcon.close:
        icon = AppIcons.close;
        break;
      default:
        break;
    }

    if (icon == null) {
      return AppSpacing.emptyBox;
    }

    return Center(
      child: AppIcon(
        icon: icon,
        color: leadingIconColor,
      ),
    );
  }

  Widget _buildLeadingLogo() {
    return const AppIcon(
      icon: Placeholder(),
      padding: AppSpacing.edgeInsetsOnlyLeft16,
    );
  }

  TextStyle _getAppBarTextStyle() {
    if (titleTextStyle != null) {
      return titleTextStyle!;
    }

    return AppTextStyles.headlineSmall.toColor(AppColorsConstants.dark);
  }
}

enum LeadingIcon {
  logo,
  back,
  close,
  none,
}

enum AppBarTitle {
  text,
  none,
}
