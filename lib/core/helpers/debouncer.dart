import 'dart:async';

import 'package:flutter/material.dart';

const _defaultDelay = Duration(milliseconds: 500);

class Debouncer {
  Debouncer({this.delay = _defaultDelay});

  final Duration delay;

  Timer? _timer;

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(delay, action);
  }

  void cancel() {
    _timer?.cancel();
  }
}
