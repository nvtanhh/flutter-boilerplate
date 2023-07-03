import '../entities/entities.dart';

abstract class UserRepository {
  Future<User> getCurrentUser();
}
