import 'package:injectable/injectable.dart';

import 'gateway/api/api.dart';

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

@LazySingleton(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  AuthDataSourceImpl(this._apiClient, this._authenticatedClient);

  final UnAuthenticatedRestApiClient _apiClient;
  final AuthenticatedRestApiClient _authenticatedClient;

  @override
  Future<void> register({required String username, required String email, required String password}) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<void> login(String email, String password) {
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> forgotPassword(String email) {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

  @override
  Future<void> resetPassword({required String token, required String email, required String password}) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }
}
