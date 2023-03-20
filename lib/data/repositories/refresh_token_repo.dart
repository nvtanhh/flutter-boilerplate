import 'package:injectable/injectable.dart';

import '../../core/exception/api_exception.dart';
import '../datasources/gateway/gateway.dart';
import '../datasources/refresh_token_datasource.dart';

@lazySingleton
class RefreshTokenRepository {
  RefreshTokenRepository(this._datasource, this._appPreferences);

  final RefreshTokenDatasource _datasource;
  final AppPreferences _appPreferences;

  // Refresh the access and save it to the preferences
  Future<void> refreshToken() async {
    try {
      final refreshToken = await _appPreferences.refreshToken;

      if (refreshToken.isNotEmpty) {
        final data = await _datasource.refreshToken(refreshToken);
        await _appPreferences.saveAccessToken(data.accessToken);
      }
    } on ApiException catch (e) {
      throw ApiException(ApiExceptionType.refreshTokenFailed, exception: e);
    }
  }
}
