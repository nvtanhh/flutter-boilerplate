import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/config/configs.dart';
import '../../../../../core/extensions/extensions.dart';
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
    if (!accessToken.isBlank) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
  }
}
