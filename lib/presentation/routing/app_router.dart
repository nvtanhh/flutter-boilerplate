import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/configs/di/di.dart';
import '../common_blocs/app/app_bloc.dart';
import '../common_widgets/error_page.dart';
import '../features/all.dart';
import 'app_page.dart';
import 'navigator_observer.dart';
import 'router_notifier.dart';

part '_transitions.dart';

/// App Router - All routing logic in one place
///
/// To add new route:
/// 1. Add enum value to AppPage
/// 2. Add cases in AppPage extensions (path, name, requiresAuth, etc.)
/// 3. Add GoRoute below
/// 4. Done!
class AppRouter {
  AppRouter._();

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _routerNotifier = RouterNotifier();

  /// Single router instance with automatic auth state refresh
  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    observers: [AppNavigatorObserver()],
    refreshListenable: _routerNotifier,
    debugLogDiagnostics: true,
    initialLocation: AppPage.signIn.path,
    routes: [
      // ============ Auth Pages ============
      GoRoute(
        path: AppPage.signIn.path,
        name: AppPage.signIn.name,
        pageBuilder: (context, state) => _buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const SignInPage(),
        ),
      ),
      GoRoute(
        path: AppPage.signUp.path,
        name: AppPage.signUp.name,
        pageBuilder: (context, state) => _buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const SignUpPage(),
        ),
      ),
      GoRoute(
        path: AppPage.forgotPassword.path,
        name: AppPage.forgotPassword.name,
        pageBuilder: (context, state) => _buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const ForgotPassPage(),
        ),
      ),

      // ============ Main Pages ============
      GoRoute(
        path: AppPage.home.path,
        name: AppPage.home.name,
        pageBuilder: (context, state) => _buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const HomePage(),
        ),
      ),
    ],
    redirect: (context, state) {
      final isLoggedIn = getIt<AppBloc>().state.isLoggedIn;
      final currentPage = AppPageUtils.fromPath(state.matchedLocation);
      final isGoingToAuth = currentPage?.isAuthPage ?? false;

      // If not logged in and trying to access protected page, redirect to sign in
      if (!isLoggedIn && !isGoingToAuth) {
        return AppPage.signIn.path;
      }

      // If logged in and trying to access auth pages, redirect to home
      if (isLoggedIn && isGoingToAuth) {
        return AppPage.home.path;
      }

      // No redirect needed
      return null;
    },
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: NotFoundPage(
        path: state.uri.toString(),
        onGoHome: () => context.go(AppPage.home.path),
      ),
    ),
  );

  /// Build a page with fade transition
  static CustomTransitionPage _buildPageWithDefaultTransition({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Fade transition
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
    );
  }
}
