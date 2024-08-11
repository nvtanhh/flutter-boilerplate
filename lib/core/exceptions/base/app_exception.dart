import '../all.dart';
import '../uncaught_exception.dart';

abstract class AppException implements Exception {
  const AppException(this.type);

  final AppExceptionType type;

  factory AppException.unexpectedError(Object? rootError) {
    return AppUncaughtException(rootError);
  }

  bool get isServerDefinedException =>
      type == AppExceptionType.api &&
      (this as ApiException).kind == ApiExceptionKind.serverDefined;
}

enum AppExceptionType {
  api,
  parse,
  validation,
  custom,
  uncaught,
}
