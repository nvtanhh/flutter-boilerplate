part of 'app_router.dart';

/// Page transition with no animation
/// Use for instant navigation without visual transition
class NoAnimationTransitionPage<T> extends CustomTransitionPage<T> {
  NoAnimationTransitionPage({
    required super.child,
    required super.name,
    super.key,
  }) : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) => child,
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        );
}

/// Page transition with fade effect
/// Use for smooth, subtle transitions between pages
class FadeTransitionPage<T> extends CustomTransitionPage<T> {
  FadeTransitionPage({
    required super.child,
    required super.name,
    super.key,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
  }) : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );
            return FadeTransition(
              opacity: curvedAnimation,
              child: child,
            );
          },
          transitionDuration: duration,
          reverseTransitionDuration: duration,
        );
}

/// Page transition with slide from right effect
/// Use for forward navigation (e.g., navigating to detail pages)
class SlideTransitionPage<T> extends CustomTransitionPage<T> {
  SlideTransitionPage({
    required super.child,
    required super.name,
    super.key,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
  }) : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(curvedAnimation),
              child: child,
            );
          },
          transitionDuration: duration,
          reverseTransitionDuration: duration,
        );
}

/// Page transition with slide from bottom effect
/// Use for modal-like pages (e.g., bottom sheets, dialogs)
class SlideUpTransitionPage<T> extends CustomTransitionPage<T> {
  SlideUpTransitionPage({
    required super.child,
    required super.name,
    super.key,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeOut,
  }) : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(curvedAnimation),
              child: child,
            );
          },
          transitionDuration: duration,
          reverseTransitionDuration: duration,
        );
}

/// Page transition with slide from top effect
/// Use for notification or alert pages
class SlideDownTransitionPage<T> extends CustomTransitionPage<T> {
  SlideDownTransitionPage({
    required super.child,
    required super.name,
    super.key,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeOut,
  }) : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, -1),
                end: Offset.zero,
              ).animate(curvedAnimation),
              child: child,
            );
          },
          transitionDuration: duration,
          reverseTransitionDuration: duration,
        );
}

/// Page transition with zoom in effect (from 0 to 1)
/// Use for emphasizing new content or modal dialogs
class ZoomInTransitionPage<T> extends CustomTransitionPage<T> {
  ZoomInTransitionPage({
    required super.child,
    required super.name,
    super.key,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
  }) : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );
            return ScaleTransition(
              scale: Tween<double>(
                begin: 0,
                end: 1,
              ).animate(curvedAnimation),
              child: child,
            );
          },
          transitionDuration: duration,
          reverseTransitionDuration: duration,
        );
}

/// Page transition with scale effect
/// Use for smooth zoom transitions
class ScaleTransitionPage<T> extends CustomTransitionPage<T> {
  ScaleTransitionPage({
    required super.child,
    required super.name,
    super.key,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
    double beginScale = 0.8,
  }) : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );
            return ScaleTransition(
              scale: Tween<double>(
                begin: beginScale,
                end: 1.0,
              ).animate(curvedAnimation),
              child: child,
            );
          },
          transitionDuration: duration,
          reverseTransitionDuration: duration,
        );
}

/// Page transition with rotation effect
/// Use for creative or playful transitions (use sparingly)
class RotationTransitionPage<T> extends CustomTransitionPage<T> {
  RotationTransitionPage({
    required super.child,
    required super.name,
    super.key,
    Duration duration = const Duration(milliseconds: 400),
    Curve curve = Curves.easeInOut,
    double turns = 1.0,
  }) : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );
            return RotationTransition(
              turns: Tween<double>(
                begin: 0,
                end: turns,
              ).animate(curvedAnimation),
              child: child,
            );
          },
          transitionDuration: duration,
          reverseTransitionDuration: duration,
        );
}

/// Page transition with size effect
/// Use for expanding/collapsing transitions
class SizeTransitionPage<T> extends CustomTransitionPage<T> {
  SizeTransitionPage({
    required super.child,
    required super.name,
    super.key,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
    Axis axis = Axis.vertical,
  }) : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );
            return SizeTransition(
              sizeFactor: curvedAnimation,
              axis: axis,
              child: child,
            );
          },
          transitionDuration: duration,
          reverseTransitionDuration: duration,
        );
}

/// Page transition with combined fade and slide effect
/// Use for smooth, iOS-like transitions
class FadeSlideTransitionPage<T> extends CustomTransitionPage<T> {
  FadeSlideTransitionPage({
    required super.child,
    required super.name,
    super.key,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
    Offset beginOffset = const Offset(0.3, 0),
  }) : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );
            return FadeTransition(
              opacity: curvedAnimation,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: beginOffset,
                  end: Offset.zero,
                ).animate(curvedAnimation),
                child: child,
              ),
            );
          },
          transitionDuration: duration,
          reverseTransitionDuration: duration,
        );
}

/// Page transition with combined fade and scale effect
/// Use for modern, material design-like transitions
class FadeScaleTransitionPage<T> extends CustomTransitionPage<T> {
  FadeScaleTransitionPage({
    required super.child,
    required super.name,
    super.key,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
    double beginScale = 0.9,
  }) : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );
            return FadeTransition(
              opacity: curvedAnimation,
              child: ScaleTransition(
                scale: Tween<double>(
                  begin: beginScale,
                  end: 1.0,
                ).animate(curvedAnimation),
                child: child,
              ),
            );
          },
          transitionDuration: duration,
          reverseTransitionDuration: duration,
        );
}
