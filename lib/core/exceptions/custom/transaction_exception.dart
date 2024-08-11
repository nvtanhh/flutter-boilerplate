import '../base/app_exception.dart';

class TransactionException extends AppException {
  final TransactionExceptionKind kind;

  const TransactionException(this.kind) : super(AppExceptionType.custom);

  @override
  String toString() {
    return 'TransactionException{kind: $kind}';
  }
}

enum TransactionExceptionKind {
  cannotCancelTransaction,
}
