import 'package:injectable/injectable.dart';

import '../../core/exceptions/api/api_exception.dart';
import '../models/refresh_token_model.dart';
import 'providers/api/clients/all.dart';

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
    try {
      return _client.post(
        '/auth/refresh',
        body: {'refreshToken': refreshToken},
        decoder: RefreshTokenModel.fromJson,
      );
    } catch (e) {
      if (e is ApiException && (e.kind == ApiExceptionKind.unknown)) {
        throw const ApiException(kind: ApiExceptionKind.refreshTokenFailed);
      }

      rethrow;
    }
  }
}
