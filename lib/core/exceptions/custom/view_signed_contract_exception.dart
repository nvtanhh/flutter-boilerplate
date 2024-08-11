import '../base/app_exception.dart';

class ViewSignedContractException extends AppException {
  final ViewSignedContractExceptionKind kind;

  const ViewSignedContractException(this.kind) : super(AppExceptionType.custom);

  @override
  String toString() {
    return 'ViewSignedContractException{kind: $kind}';
  }
}

enum ViewSignedContractExceptionKind {
  duplicateContract,
}
