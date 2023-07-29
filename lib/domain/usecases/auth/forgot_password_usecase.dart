import 'package:injectable/injectable.dart';

import '../../repositories/auth_repo.dart';
import '../base/base_params.dart';
import '../base/base_usecases.dart';

@injectable
class ForgotPasswordUseCase extends BaseFutureUseCase<ForgotPasswordParams, void> {
  ForgotPasswordUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<void> buildUseCase(ForgotPasswordParams params) async {
    await _authRepository.forgotPassword(params.email);
  }
}

class ForgotPasswordParams extends BaseUsecaseParams {
  const ForgotPasswordParams(this.email);

  final String email;
}
