import '../base/app_exception.dart';

class DepositException extends AppException {
  final DepositExceptionKind kind;
  final dynamic additionalData;

  const DepositException(
    this.kind, {
    this.additionalData,
  }) : super(AppExceptionType.custom);

  @override
  String toString() {
    return 'DepositException{kind: $kind}';
  }
}

enum DepositExceptionKind {
  offWorkTime,
  reachDailyLimit,
  blockedDueToDataAggregation,
  reachPlanCapacity,
}
