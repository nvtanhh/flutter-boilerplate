import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../router/router.dart';

@Injectable()
class AuthGuard extends AutoRouteGuard {
  const AuthGuard();

  // TODO(me): implement _isLoggedIn
  bool get _isLoggedIn => false;

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
