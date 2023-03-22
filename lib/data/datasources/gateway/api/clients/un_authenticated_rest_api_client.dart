import 'package:injectable/injectable.dart';

import '../../../../../core/config/config.index.dart';
import 'base/rest_api_client.dart';

@lazySingleton
class UnAuthenticatedRestApiClient extends RestApiClient {
  UnAuthenticatedRestApiClient() : super(baseUrl: getIt<EnvConfig>().apiUrl);
}
