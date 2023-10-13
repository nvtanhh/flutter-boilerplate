import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../../core/constants/constants.dart';
import 'base_interceptor.dart';

class RetryInterceptor extends BaseInterceptor {
  RetryInterceptor(
    this._dio, {
    int maxRetries = ApiConstants.maxRetries,
    Duration retryInterval = ApiConstants.retryInterval,
  })  : _retryInterval = retryInterval,
        _maxRetries = maxRetries;

  final Dio _dio;
  final Duration _retryInterval;
  int _maxRetries;

  static const _retryHeaderKey = 'x-retry';

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (!options.headers.containsKey(_retryHeaderKey)) {
      _maxRetries = ApiConstants.maxRetries;
    }

    return super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if (_maxRetries > 0 && shouldRetry(err)) {
      await Future<void>.delayed(_retryInterval);
      _maxRetries--;
      try {
        return await _dio
            .fetch<dynamic>(err.requestOptions..headers[_retryHeaderKey] = true)
            .then((value) => handler.resolve(value));
      } catch (e) {
        return super.onError(err, handler);
      }
    }

    return super.onError(err, handler);
  }

  bool shouldRetry(DioException error) {
    return error.type != DioExceptionType.cancel &&
        error.error != null &&
        error.error is SocketException;
  }
}
