import 'package:flutter/material.dart';

import '../../core/extensions/extensions.dart';
import '../../core/utils/view_utils.dart';
import '../resource/styles/styles.dart';

class CommonScaffold extends StatelessWidget {
  const CommonScaffold({
    required this.body,
    Key? key,
    this.appBar,
    this.backgroundColor = AppColorsConstants.white,
    this.hideKeyboardWhenTouchOutside = false,
    this.applyAutoPaddingBottom = false,
  }) : super(key: key);

  final PreferredSizeWidget? appBar;
  final Widget body;
  final Color backgroundColor;
  final bool hideKeyboardWhenTouchOutside;
  final bool applyAutoPaddingBottom;

  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar,
      body: Padding(
        padding: _getBottomPadding(context),
        child: body,
      ),
    );

    return hideKeyboardWhenTouchOutside
        ? GestureDetector(
            onTap: () => ViewUtils.hideKeyboard(context),
            child: scaffold,
          )
        : scaffold;
  }

  EdgeInsetsGeometry _getBottomPadding(BuildContext context) {
    if (!applyAutoPaddingBottom) {
      return EdgeInsets.zero;
    }

    var bottomPadding = context.bottomPadding;
    if (context.bottomViewInsets == 0) {
      bottomPadding = Sizes.s16;
    }

    return EdgeInsets.only(bottom: bottomPadding);
  }
}
