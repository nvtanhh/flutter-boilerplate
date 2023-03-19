import 'dart:io';

extension HttpCodeExtension on int {
  bool get isOk => this == HttpStatus.ok;
  bool get isCreated => this == HttpStatus.created;
  bool get isBadRequest => this == HttpStatus.badRequest;
  bool get isUnauthorized => this == HttpStatus.unauthorized;
  bool get isForbidden => this == HttpStatus.forbidden;
  bool get isNotFound => this == HttpStatus.notFound;
  bool get isConflict => this == HttpStatus.conflict;
  bool get isInternalServer => this == HttpStatus.internalServerError;
  bool get isServiceUnavailable => this == HttpStatus.serviceUnavailable;
  bool get isGatewayTimeout => this == HttpStatus.gatewayTimeout;

  bool get isClientError =>
      this == HttpStatus.badRequest ||
      this == HttpStatus.unauthorized ||
      this == HttpStatus.forbidden ||
      this == HttpStatus.notFound ||
      this == HttpStatus.conflict;

  bool get isServerError =>
      this == HttpStatus.internalServerError ||
      this == HttpStatus.serviceUnavailable ||
      this == HttpStatus.gatewayTimeout;
}
