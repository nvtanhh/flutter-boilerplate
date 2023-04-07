import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/config/config.index.dart';
import '../../../app_preferences.dart';
import 'base_interceptor.dart';

@injectable
class AccessTokenInterceptor extends BaseInterceptor {
  AccessTokenInterceptor();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await getIt<AppPreferences>().getAccessToken();
    if (accessToken.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
  }
}
