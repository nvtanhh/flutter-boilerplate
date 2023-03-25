import 'dart:io';

import 'package:dio/dio.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'base/app_exception.dart';

class ApiException extends AppException {
  const ApiException(this.kind, [this.exception]);

  factory ApiException.fromDioError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectionTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        return ApiException(ApiExceptionKind.timeout, error);
      case DioErrorType.connectionError:
        return ApiException(ApiExceptionKind.network, error);
      case DioErrorType.cancel:
        return ApiException(ApiExceptionKind.cancellation, error);
      default:
        break;
    }

    return ApiException(ApiExceptionKind.unknown, error);
  }

  factory ApiException.fromGraphql(OperationException exception) {
    return ApiException(ApiExceptionKind.unknown, exception);
  }

  final ApiExceptionKind kind;
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
