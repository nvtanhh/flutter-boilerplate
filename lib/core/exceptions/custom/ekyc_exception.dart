import '../all.dart';

class EkycException extends AppException {
  final String? message;
  final EkycExceptionKind kind;

  const EkycException({
    this.message,
    this.kind = EkycExceptionKind.unknown,
  }) : super(AppExceptionType.custom);
}

enum EkycExceptionKind {
  idNumberExist,
  unknown,
}
