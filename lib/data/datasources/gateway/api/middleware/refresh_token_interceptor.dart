import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'base_interceptor.dart';

@injectable
class RefreshTokenInterceptor extends BaseInterceptor {
  RefreshTokenInterceptor();

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      final options = err.response!.requestOptions;
      _onExpiredToken(options, handler);
    } else {
      handler.next(err);
    }
  }

  void _onExpiredToken(RequestOptions options, ErrorInterceptorHandler handler) {}
}
