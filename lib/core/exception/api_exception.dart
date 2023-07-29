import 'dart:io';

import 'package:dio/dio.dart';

import 'base/app_exception.dart';

class ApiException extends AppException {
  const ApiException(this.kind, [this.exception]);

  final ApiExceptionKind kind;
  final Object? exception;

  /// Returns the status code of the exception
  /// -1 is considered as unknown status code
  int get statusCode {
    if (exception is DioException) {
      return (exception as DioException).response?.statusCode ?? -1;
    }

    return -1;
  }
}

enum ApiExceptionKind {
  unknown,
  noInternet,
  network,
  timeout,
  refreshTokenFailed,
  cancellation,
}

extension ApiExceptionExtensions on ApiException {
  bool get isBadRequest => statusCode == HttpStatus.badRequest;
  bool get isUnauthorized => statusCode == HttpStatus.unauthorized;
  bool get isForbidden => statusCode == HttpStatus.forbidden;
  bool get isNotFound => statusCode == HttpStatus.notFound;
  bool get isServerError => statusCode >= HttpStatus.internalServerError;
}
