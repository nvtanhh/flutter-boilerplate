import 'dart:async';

import 'package:flutter/foundation.dart';

import '../../core/configs/di/di.dart';
import '../common_blocs/app/app_bloc.dart';

/// Router notifier that listens to authentication state changes
/// and notifies GoRouter to rebuild when needed
///
/// Only notifies when isLoggedIn changes to avoid unnecessary rebuilds
class RouterNotifier extends ChangeNotifier {
  late final StreamSubscription<AppState> _subscription;
  bool _isLoggedIn = false;

  RouterNotifier() {
    // Get initial state
    _isLoggedIn = getIt<AppBloc>().state.isLoggedIn;

    // Listen to auth state changes only
    _subscription = getIt<AppBloc>().stream.listen((state) {
      // Only notify if isLoggedIn actually changed
      if (state.isLoggedIn != _isLoggedIn) {
        _isLoggedIn = state.isLoggedIn;
        notifyListeners();
      }
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
