import 'dart:io';

import 'package:collection/collection.dart';

import '../base/app_exception.dart';

typedef ServerKnownExceptionParser = AppException? Function(
  int? statusCode,
  ServerError serverError,
);

AppException? mapMessageToException({
  required Map<String, AppException> mapper,
  required String message,
}) {
  return mapper.entries
      .firstWhereOrNull((entry) => message.contains(entry.key))
      ?.value;
}

class ServerError {
  const ServerError({
    this.errorCode,
    this.message,
    this.details,
  });

  final String? errorCode;
  final String? message;
  final dynamic details;

  @override
  String toString() {
    return 'ServerError{errorCode: $errorCode, message: $message}';
  }
}

class ApiException extends AppException {
  const ApiException({
    required this.kind,
    this.statusCode,
    this.rootException,
    this.serverError,
  }) : super(AppExceptionType.api);

  final ApiExceptionKind kind;
  final int? statusCode;
  final ServerError? serverError;
  // Using object because we don't know what type of exception it is
  // ignore: no-object-declaration
  final Object? rootException;

  String? get generalServerMessage => serverError?.message;

  @override
  String toString() {
    return 'ApiException{kind: $kind, statusCode: $statusCode, $serverError} ${rootException != null ? 'rootException: $rootException' : ''}';
  }
}

enum ApiExceptionKind {
  noInternet,

  /// host not found, cannot connect to host
  network,

  /// server has defined response
  serverDefined,

  /// server has not defined response
  serverUndefined,

  /// error occurs when passing JSON
  decodeError,

  /// error occurs when using incorrect SuccessResponseMapperType
  invalidSuccessResponseMapperType,

  /// error occurs when using incorrect ErrorResponseMapperType
  invalidErrorResponseMapperType,

  /// error occurs when all JSON keys of error response are incorrect
  invalidErrorResponse,

  timeout,
  noAccessTokenFound,
  refreshTokenFailed,
  cancellation,
  unknown,
}

extension ApiExceptionExtensions on ApiException {
  bool get isBadRequest => statusCode == HttpStatus.badRequest;
  bool get isUnauthorized => statusCode == HttpStatus.unauthorized;
  bool get isForbidden => statusCode == HttpStatus.forbidden;
  bool get isNotFound => statusCode == HttpStatus.notFound;
  bool get isServerError =>
      statusCode != null && statusCode! >= HttpStatus.internalServerError;
}
