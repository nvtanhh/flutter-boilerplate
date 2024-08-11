import '../all.dart';

class BankAccountsException extends AppException {
  const BankAccountsException(
    this.kind, {
    this.rootException,
    this.generalServerMessage,
  }) : super(AppExceptionType.custom);

  final BankAccountsExceptionKind kind;
  // Using object because we don't know what type of exception it is
  // ignore: no-object-declaration
  final Object? rootException;
  final String? generalServerMessage;

  @override
  String toString() {
    return 'BankAccountsException{kind: $kind, exception: $rootException, generalServerMessage: $generalServerMessage}';
  }
}

enum BankAccountsExceptionKind {
  accountInfoInvalid,
  unknown,
}
