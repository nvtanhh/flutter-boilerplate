import 'package:injectable/injectable.dart';

import 'providers/api/api.dart';

abstract class AuthDataSource {
  Future<void> register({
    required String username,
    required String email,
    required String password,
  });

  Future<void> login(String email, String password);

  Future<void> logout();

  Future<void> resetPassword({
    required String token,
    required String email,
    required String password,
  });

  Future<void> forgotPassword(String email);
}

@Injectable(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  AuthDataSourceImpl(this._apiClient, this._authenticatedClient);

  final UnAuthenticatedRestApiClient _apiClient;
  final AuthenticatedRestApiClient _authenticatedClient;

  @override
  Future<void> register({
    required String username,
    required String email,
    required String password,
  }) {
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
