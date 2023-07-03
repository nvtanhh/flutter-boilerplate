import 'package:injectable/injectable.dart';

import '../../repositories/auth_repo.dart';
import '../../repositories/user_repo.dart';
import '../base/base_params.dart';
import '../base/base_usecases.dart';

@injectable
class SignInUseCase extends BaseFutureUseCase<SignInParams, void> {
  SignInUseCase(this._authRepository, this._userRepository);

  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  @override
  Future<void> buildUseCase(SignInParams params) async {
    await _authRepository.signIn(params.email, params.password);
    await _userRepository.getCurrentUser();
  }
}

class SignInParams extends BaseUsecaseParams {
  const SignInParams(this.email, this.password);

  final String email;
  final String password;
}
