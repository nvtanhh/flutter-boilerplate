import '../base/app_exception.dart';

class ParseException extends AppException {
  const ParseException(this.kind, [this.rootException]) : super(AppExceptionType.parse);

  final ParseExceptionKind kind;
  // Using object because we don't know what type of exception it is
  // ignore: no-object-declaration
  final Object? rootException;

  @override
  String toString() {
    return 'ParseException: {kind: $kind, rootException: $rootException}';
  }
}

enum ParseExceptionKind {
  invalidSourceFormat,
}
