import 'package:flutter/material.dart';

import '../../../core/configs/configs.dart';
import '../../../core/mixins/log_mixin.dart';

class AppNavigatorObserver extends NavigatorObserver with LogMixin {
  AppNavigatorObserver();

  static const _enableLog = LogConfig.enableNavigatorObserverLog;

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    if (_enableLog) {
      logDebug(
        'didPush from ${previousRoute?.settings.name} to ${route.settings.name}',
      );
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    if (_enableLog) {
      logDebug(
        'didPop ${route.settings.name}, back to ${previousRoute?.settings.name}',
      );
    }
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    if (_enableLog) {
      logDebug(
        'didRemove ${route.settings.name}, back to ${previousRoute?.settings.name}',
      );
    }
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (_enableLog) {
      logDebug(
        'didReplace ${oldRoute?.settings.name} by ${newRoute?.settings.name}',
      );
    }
  }
}
