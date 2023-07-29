import 'dart:async';

import 'package:flutter/material.dart';

const _defaultDelay = Duration(milliseconds: 500);

class Debouncer {
  Debouncer({this.delay = _defaultDelay});

  final Duration delay;

  VoidCallback? _action;
  Timer? _timer;

  void run(VoidCallback action) {
    // Let the latest action override whatever was there before
    _action = action;
    // Always cancel and restart the timer
    _timer?.cancel();
    _timer = Timer(delay, _callAction);
  }

  void _callAction() {
    _action?.call(); // If we have an action queued up, complete it.
    _timer = null;
  }

  void cancel() {
    _timer?.cancel();
    _timer = null;
    _action = null;
  }
}
