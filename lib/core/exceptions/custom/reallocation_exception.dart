import '../base/app_exception.dart';

class ReallocationException extends AppException {
  final ReallocationExceptionKind kind;
  final dynamic additionalData;

  const ReallocationException(
    this.kind, {
    this.additionalData,
  }) : super(AppExceptionType.custom);

  @override
  String toString() {
    return 'ReallocationException{kind: $kind}';
  }
}

enum ReallocationExceptionKind {
  invalidAmountDueBlockedRewardMoney,
  reachDestinationPlanCapacity,
}
