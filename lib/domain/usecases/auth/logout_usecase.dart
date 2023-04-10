import 'package:injectable/injectable.dart';

import '../../repositories/auth_repo.dart';
import '../base/base_params.dart';
import '../base/base_usecases.dart';

@injectable
class LogoutUseCase extends BaseFutureUseCase<NoParam, void> {
  LogoutUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<void> buildUseCase(NoParam params) async {
    await _repository.logout();
    await _repository.clearCurrentUserData();
    await _repository.clearTokens();
  }
}
