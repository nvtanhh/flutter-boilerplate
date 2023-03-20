import 'package:injectable/injectable.dart';

import '../models/refresh_token_data.dart';
import 'gateway/api/clients/clients.dart';

abstract class RefreshTokenDatasource {
  // Refresh the access token with refresh token
  Future<RefreshTokenData> refreshToken(String refreshToken);
}

@Injectable(as: RefreshTokenDatasource)
class RefreshTokDatasourceImp implements RefreshTokenDatasource {
  RefreshTokDatasourceImp(this._client);

  final UnAuthenticatedRestApiClient _client;

  @override
  Future<RefreshTokenData> refreshToken(String refreshToken) async {
    return _client.post(
      '/auth/refresh',
      body: {'refreshToken': refreshToken},
      decoder: RefreshTokenData.fromJson,
    );
  }
}
