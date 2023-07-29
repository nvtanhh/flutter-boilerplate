import 'package:injectable/injectable.dart';

import '../../repositories/auth_repo.dart';
import '../base/base_params.dart';
import '../base/base_usecases.dart';

@injectable
class SignInUseCase extends BaseFutureUseCase<SignInParams, void> {
  SignInUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<void> buildUseCase(SignInParams params) async {
    await _authRepository.signIn(params.email, params.password);
  }
}

class SignInParams extends BaseUsecaseParams {
  const SignInParams(this.email, this.password);

  final String email;
  final String password;
}
