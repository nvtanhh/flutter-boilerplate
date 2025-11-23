import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_page.dart';

/// Navigation helper extensions using GoRouter's built-in capabilities
/// No need for manual stack tracking!
extension NavigationHelperExtension on BuildContext {
  /// Get current location path
  String get currentLocation => GoRouterState.of(this).matchedLocation;

  /// Get current page (if matches AppPage)
  AppPage? get currentPage => AppPageUtils.fromPath(currentLocation);

  /// Check if can go back
  bool get canPop => GoRouter.of(this).canPop();

  /// Get current route name
  String? get currentRouteName => GoRouterState.of(this).name;

  /// Check if currently on specific page
  bool isOnPage(AppPage page) => currentLocation == page.path;

  /// Get full URI with query parameters
  Uri get currentUri => GoRouterState.of(this).uri;

  /// Get path parameters
  Map<String, String> get pathParameters => GoRouterState.of(this).pathParameters;

  /// Get query parameters
  Map<String, String> get queryParameters => GoRouterState.of(this).uri.queryParameters;
}

/// Global navigation helper (use sparingly, prefer context extensions)
class NavigationHelper {
  NavigationHelper._();

  /// Get current location from global navigator key
  /// Note: Requires navigator key to be set in router
  static String? getCurrentLocation(GlobalKey<NavigatorState> navigatorKey) {
    final context = navigatorKey.currentContext;
    if (context == null) {
      return null;
    }
    return GoRouterState.of(context).matchedLocation;
  }

  /// Get current page from global navigator key
  static AppPage? getCurrentPage(GlobalKey<NavigatorState> navigatorKey) {
    final location = getCurrentLocation(navigatorKey);
    if (location == null) {
      return null;
    }
    return AppPageUtils.fromPath(location);
  }
}
