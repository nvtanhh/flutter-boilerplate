import 'package:injectable/injectable.dart';

import '../../repositories/auth_repo.dart';
import '../base/base_params.dart';
import '../base/base_usecases.dart';

@injectable
class IsLoggedInUsecase extends BaseSyncUseCase<NoParam, bool> {
  const IsLoggedInUsecase(this._repository);

  final AuthRepository _repository;

  @override
  bool buildUseCase(NoParam params) {
    throw _repository.isLoggedIn;
  }
}
