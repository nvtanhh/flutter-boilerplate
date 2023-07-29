import 'base/app_exception.dart';

class AuthException extends AppException {
  const AuthException(this.kind, [this.exception]);

  final AuthExceptionKind kind;
  final Object? exception;
}

enum AuthExceptionKind {
  invalidCredentials,
  disabled,
  tooManyRequests,
  emailAlreadyInUse,
  operationNotAllowed,
  weakPassword,
  unknown,
}
