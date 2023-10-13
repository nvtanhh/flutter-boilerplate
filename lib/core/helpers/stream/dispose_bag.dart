import 'dart:async';

import 'package:flutter/material.dart';

import '../../configs/logging_config.dart';
import '../../mixins/log_mixin.dart';
import 'disposable.dart';

class DisposeBag with LogMixin {
  DisposeBag({this.enableLogging = LogConfig.enableDisposeBagLog});

  final bool enableLogging;
  final List<Object> _disposable = [];

  void addDisposable(Object disposable) {
    _disposable.add(disposable);
  }

  void dispose() {
    for (var disposable in _disposable) {
      if (disposable is StreamSubscription) {
        disposable.cancel();
        if (enableLogging) {
          logDebug('Canceled $disposable');
        }
      } else if (disposable is StreamController) {
        disposable.close();
        if (enableLogging) {
          logDebug('Closed $disposable');
        }
      } else if (disposable is ChangeNotifier) {
        disposable.dispose();
        if (enableLogging) {
          logDebug('Disposed $disposable');
        }
      } else if (disposable is Disposable) {
        disposable.dispose();
      }
    }

    _disposable.clear();
  }
}

extension StreamSubscriptionExtensions on StreamSubscription {
  void disposeBy(DisposeBag disposeBag) {
    disposeBag.addDisposable(this);
  }
}

extension StreamControllerExtensions on StreamController {
  void disposeBy(DisposeBag disposeBag) {
    disposeBag.addDisposable(this);
  }
}

extension ChangeNotifierExtensions on ChangeNotifier {
  void disposeBy(DisposeBag disposeBag) {
    disposeBag.addDisposable(this);
  }
}

extension DisposableExtensions on Disposable {
  void disposeBy(DisposeBag disposeBag) {
    disposeBag.addDisposable(this);
  }
}
