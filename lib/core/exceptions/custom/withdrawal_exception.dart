import '../base/app_exception.dart';

class WithdrawalException extends AppException {
  final WithdrawalExceptionKind kind;
  final dynamic additionalData;

  const WithdrawalException(
    this.kind, {
    this.additionalData,
  }) : super(AppExceptionType.custom);

  @override
  String toString() {
    return 'WithdrawalException{kind: $kind}';
  }
}

enum WithdrawalExceptionKind {
  notEnoughBalance,
  offWorkTime,
  existWithdrawalRequest,
  dailyLimitReached,
  merchantNotEnoughBalance,
  invalidAmountOffWorkTime,
  blockedDueToDataAggregation,
  invalidAmountDueBlockedRewardMoney,
}
