import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/configs/di/di.dart';
import '../../../core/constants/all.dart';
import '../../common_blocs/app/app_bloc.dart';
import '../../features/all.dart';
import '../observer/navigator_observer.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  // static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final _signInRoute = GoRoute(
    path: RouteConstants.signIn,
    builder: (BuildContext context, GoRouterState state) {
      return const SignInPage();
    },
    pageBuilder: (context, state) => _buildPageWithDefaultTransition(
      context: context,
      state: state,
      child: const SignInPage(),
    ),
  );

  static final unAuthRouter = GoRouter(
    // navigatorKey: _rootNavigatorKey,
    observers: [AppNavigatorObserver()],
    initialLocation: RouteConstants.signIn,
    routes: [
      _signInRoute,
      GoRoute(
        path: RouteConstants.signUp,
        builder: (BuildContext context, GoRouterState state) {
          return const SignUpPage();
        },
      ),
      GoRoute(
        path: RouteConstants.forgotPassword,
        builder: (BuildContext context, GoRouterState state) {
          return const ForgotPassPage();
        },
        pageBuilder: (context, state) => _buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const ForgotPassPage(),
        ),
      ),
    ],
  );

  static final GoRouter authenticatedRoute = GoRouter(
    navigatorKey: _rootNavigatorKey,
    observers: [AppNavigatorObserver()],
    initialLocation: RouteConstants.home,
    routes: [
      _signInRoute,
      GoRoute(
        path: RouteConstants.home,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
        pageBuilder: (context, state) => _buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const HomePage(),
        ),
      ),
    ],
    redirect: (context, state) async {
      final isLoggedIn = getIt.get<AppBloc>().state.isLoggedIn;

      if (!isLoggedIn) {
        return RouteConstants.signIn;
      }

      return null;
    },
  );

  static CustomTransitionPage _buildPageWithDefaultTransition({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<dynamic>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          child,
    );
  }
}
