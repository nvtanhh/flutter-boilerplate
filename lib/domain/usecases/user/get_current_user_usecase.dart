import 'package:injectable/injectable.dart';

import '../../entities/user.dart';
import '../../repositories/user_repo.dart';
import '../base/base_params.dart';
import '../base/base_usecases.dart';

@injectable
class GetCurrentUserUseCase extends BaseFutureUseCase<NoParam, User> {
  GetCurrentUserUseCase(this._repository);

  final UserRepository _repository;

  @override
  Future<User> buildUseCase(NoParam params) async {
    return _repository.getCurrentUser();
  }
}
