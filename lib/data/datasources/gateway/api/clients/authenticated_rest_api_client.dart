import 'package:injectable/injectable.dart';

import '../../../../../core/config/config.index.dart';
import '../../../../../core/config/env_config.dart';
import '../middleware/middleware.index.dart';
import 'base/rest_api_client.dart';

@lazySingleton
class AuthenticatedRestApiClient extends RestApiClient {
  AuthenticatedRestApiClient({
    required AccessTokenInterceptor accessTokenInterceptor,
    required RefreshTokenInterceptor refreshTokenInterceptor,
  }) : super(
          baseUrl: getIt<EnvConfig>().apiUrl,
          interceptors: [
            accessTokenInterceptor,
            refreshTokenInterceptor,
          ],
        );
}
