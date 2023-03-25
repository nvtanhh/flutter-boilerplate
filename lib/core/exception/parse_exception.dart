import 'base/app_exception.dart';

class ParseException extends AppException {
  const ParseException(this.kind, [this.exception]);

  final ParseExceptionKind kind;
  final Object? exception;

  @override
  String toString() {
    return 'ParseException: {kind: $kind, rootException: $exception}';
  }
}

enum ParseExceptionKind {
  invalidSourceFormat,
}
