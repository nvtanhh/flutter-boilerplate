import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases/auth/auth_usecases.dart';
import '../router/router.dart';

@injectable
class AuthGuard extends AutoRouteGuard {
  const AuthGuard(this._isLoggedInUsecase);

  final IsLoggedInUsecase _isLoggedInUsecase;

  bool get _isLoggedIn {
    return _isLoggedInUsecase.execute();
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (_isLoggedIn) {
      resolver.next(true);
    } else {
      router.push(const LoginRoute());
      resolver.next(false);
    }
  }
}
