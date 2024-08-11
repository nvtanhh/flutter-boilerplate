import '../entities/all.dart';

abstract class UserRepository {
  Future<User> getCurrentUser();
}
