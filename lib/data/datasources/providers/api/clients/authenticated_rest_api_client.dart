import 'package:injectable/injectable.dart';

import '../../../../../core/configs/all.dart';
import '../interceptor/all.dart';
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
