import 'package:injectable/injectable.dart';

import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repo.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  @override
  Future<User> getCurrentUser() {
    throw UnimplementedError();
  }
}
