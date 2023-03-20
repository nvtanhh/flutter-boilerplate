import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/config/config.index.dart';
import '../../preference/app_preferences.dart';
import 'base_interceptor.dart';

@injectable
class AccessTokenInterceptor extends BaseInterceptor {
  AccessTokenInterceptor();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await getIt<AppPreferences>().accessToken;
    if (accessToken.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
  }
}
