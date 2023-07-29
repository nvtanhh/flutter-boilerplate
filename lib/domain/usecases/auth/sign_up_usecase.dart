import 'package:injectable/injectable.dart';

import '../../repositories/auth_repo.dart';
import '../base/base_params.dart';
import '../base/base_usecases.dart';

@injectable
class SignUpUseCase extends BaseFutureUseCase<SignUpParams, void> {
  SignUpUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<void> buildUseCase(SignUpParams params) async {
    await _authRepository.signUp(
      username: params.username,
      email: params.email,
      password: params.password,
    );
  }
}

class SignUpParams extends BaseUsecaseParams {
  const SignUpParams({
    required this.username,
    required this.email,
    required this.password,
  });

  final String username;
  final String email;
  final String password;
}
