import 'package:dio/dio.dart';

import '../base/app_exception.dart';

class ApiException extends AppException {
  ApiException(this.type, {this.exception});

  final ApiExceptionType type;
  final Object? exception;

  /// Returns the status code of the exception
  /// -1 is considered as unknown status code
  int get statusCode {
    if (exception is DioError) {
      return (exception as DioError).response?.statusCode ?? -1;
    }

    return -1;
  }
}

enum ApiExceptionType {
  unknown,
  noInternet,
  network,
  timeout,
  cancellation,
}
