import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  Widget clickable(
    void Function() action, {
    bool opaque = true,
    MouseCursor cursor = SystemMouseCursors.click,
    HitTestBehavior behavior = HitTestBehavior.opaque,
  }) {
    return GestureDetector(
      behavior: opaque ? behavior : HitTestBehavior.deferToChild,
      onTap: action,
      child: MouseRegion(
        cursor: cursor,
        opaque: opaque,
        child: this,
      ),
    );
  }
}
