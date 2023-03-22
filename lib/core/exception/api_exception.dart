import 'dart:io';

import 'package:dio/dio.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'base/app_exception.dart';

class ApiException extends AppException {
  ApiException(this.type, {this.exception});

  factory ApiException.fromDioError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectionTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        return ApiException(ApiExceptionType.timeout, exception: error);
      case DioErrorType.connectionError:
        return ApiException(ApiExceptionType.network, exception: error);
      case DioErrorType.cancel:
        return ApiException(ApiExceptionType.cancellation, exception: error);
      default:
        break;
    }

    return ApiException(ApiExceptionType.unknown, exception: error);
  }

  factory ApiException.fromGraphql(OperationException exception) {
    return ApiException(ApiExceptionType.unknown, exception: exception);
  }

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
