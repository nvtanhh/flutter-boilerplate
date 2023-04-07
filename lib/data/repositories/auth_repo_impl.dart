import 'package:injectable/injectable.dart';

import '../../domain/repositories/auth_repo.dart';
import '../datasources/datasources.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._appPreferences, this._dataSource);

  final AppPreferences _appPreferences;
  final AuthDataSource _dataSource;

  @override
  bool get isLoggedIn {
    return true;
  }

  @override
  Future<void> register({required String username, required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<void> login(String email, String password) {
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    throw UnimplementedError();
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
}
