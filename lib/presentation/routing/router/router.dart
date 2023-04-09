import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../core/config/config.index.dart';
import '../../../core/constants/route_constants.dart';
import '../../features/features.dart';
import '../guard/auth_guard.dart';

part 'router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: LoginRoute.page, path: RouteConstants.login),
    AutoRoute(
      page: HomeRoute.page,
      path: RouteConstants.home,
      guards: [getIt.get<AuthGuard>()],
    ),
  ];
}
