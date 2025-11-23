import 'package:injectable/injectable.dart';

import '../../domain/repositories/auth_repo.dart';
import '../datasources/all.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._appPreferences, this._dataSource);

  // ignore: unused_field
  final AppPreferences _appPreferences;
  // ignore: unused_field
  final AuthDataSource _dataSource;

  @override
  Future<void> signUp({
    required String username,
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> signIn(String email, String password) {
    // throw UnimplementedError();
    return Future.value();
  }

  @override
  Future<void> forgotPassword(String email) {
    throw UnimplementedError();
  }

  @override
  Future<void> resetPassword({
    required String token,
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> clearCurrentUserData() {
    throw UnimplementedError();
  }

  @override
  Future<void> clearTokens() {
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    throw UnimplementedError();
  }
}
