/// App pages enum with rich metadata
///
/// To add new page:
/// 1. Add enum value with constructor parameters
/// 2. Add GoRoute in app_router.dart
/// 3. Done! (Only 2 steps!)
enum AppPage {
  // ============ Auth Pages ============
  signIn(
    path: '/sign-in',
    name: 'signIn',
    requiresAuth: false,
    title: 'Sign In',
    description: 'Sign in to your account',
  ),
  signUp(
    path: '/sign-up',
    name: 'signUp',
    requiresAuth: false,
    title: 'Sign Up',
    description: 'Create a new account',
  ),
  forgotPassword(
    path: '/forgot-password',
    name: 'forgotPassword',
    requiresAuth: false,
    title: 'Forgot Password',
    description: 'Reset your password',
  ),

  // ============ Main Pages ============
  home(
    path: '/',
    name: 'home',
    title: 'Home',
    description: 'Home page',
  );

  // Constructor
  const AppPage({
    required this.path,
    required this.name,
    required this.title,
    this.requiresAuth = true,
    this.description,
  });

  /// Route path (e.g., '/sign-in')
  final String path;

  /// Route name for goNamed (e.g., 'signIn')
  final String name;

  /// Does this page require authentication?
  final bool requiresAuth;

  /// Page title (for analytics, breadcrumbs, etc.)
  final String title;

  /// Page description (for analytics, SEO, etc.)
  final String? description;

  /// Is this an auth page?
  bool get isAuthPage => !requiresAuth;
}

/// Utility methods for AppPage
class AppPageUtils {
  const AppPageUtils._();

  /// Get page by path
  static AppPage? fromPath(String path) {
    try {
      return AppPage.values.firstWhere((page) => page.path == path);
    } catch (_) {
      return null;
    }
  }

  /// Get page by name
  static AppPage? fromName(String name) {
    try {
      return AppPage.values.firstWhere((page) => page.name == name);
    } catch (_) {
      return null;
    }
  }

  /// Check if path is auth page
  static bool isAuthPath(String path) {
    final page = fromPath(path);
    return page?.isAuthPage ?? false;
  }

  /// Get all auth pages
  static List<AppPage> get authPages {
    return AppPage.values.where((page) => page.isAuthPage).toList();
  }

  /// Get all protected pages
  static List<AppPage> get protectedPages {
    return AppPage.values.where((page) => page.requiresAuth).toList();
  }

  /// Get all pages as map (path -> page)
  static Map<String, AppPage> get pathMap {
    return {for (final page in AppPage.values) page.path: page};
  }

  /// Get all pages as map (name -> page)
  static Map<String, AppPage> get nameMap {
    return {for (final page in AppPage.values) page.name: page};
  }
}
