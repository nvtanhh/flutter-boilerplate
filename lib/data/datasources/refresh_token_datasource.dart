import 'package:injectable/injectable.dart';

import '../models/refresh_token_model.dart';
import 'gateway/api/clients/clients.dart';

abstract class RefreshTokenDatasource {
  // Refresh the access token with refresh token
  Future<RefreshTokenModel> refreshToken(String refreshToken);
}

@Injectable(as: RefreshTokenDatasource)
class RefreshTokDatasourceImp implements RefreshTokenDatasource {
  RefreshTokDatasourceImp(this._client);

  final UnAuthenticatedRestApiClient _client;

  @override
  Future<RefreshTokenModel> refreshToken(String refreshToken) async {
    return _client.post(
      '/auth/refresh',
      body: {'refreshToken': refreshToken},
      decoder: RefreshTokenModel.fromJson,
    );
  }
}
