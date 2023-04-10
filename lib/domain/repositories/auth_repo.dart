abstract class AuthRepository {
  bool get isLoggedIn;

  Future<void> register({
    required String username,
    required String email,
    required String password,
  });

  Future<void> login(String email, String password);

  Future<void> resetPassword({
    required String token,
    required String email,
    required String password,
  });

  Future<void> forgotPassword(String email);

  Future<void> clearCurrentUserData();

  Future<void> clearTokens();

  Future<void> logout();
}
