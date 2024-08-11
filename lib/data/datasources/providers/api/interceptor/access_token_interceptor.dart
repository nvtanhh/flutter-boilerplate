import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/configs/configs.dart';
import '../../../../../core/extensions/all.dart';
import '../../../app_preferences.dart';
import 'base_interceptor.dart';

@injectable
class AccessTokenInterceptor extends BaseInterceptor {
  AccessTokenInterceptor();
  @override
  int get priority => BaseInterceptor.accessTokenPriority;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await getIt<AppPreferences>().getAccessToken();
    if (!accessToken.isBlank) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    return super.onRequest(options, handler);
  }
}
