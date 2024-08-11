import '../all.dart';

class AuthException extends AppException {
  const AuthException(
    this.kind, {
    this.additionalData,
  }) : super(AppExceptionType.custom);

  final AuthExceptionKind kind;
  final dynamic additionalData;

  @override
  String toString() {
    return 'AuthException{kind: $kind, additionalData: $additionalData}';
  }
}

enum AuthExceptionKind {
  invalidCredentials,
  emailAlreadyInUse,
  emailNotFound,
  passwordIsWeak,
  otpExpired,
  otpInvalid,
  notSupportPrivateEmail,
  phoneNumberInvalid,
  fullNameExceedsMaxLength,
  unknown,
  weakPassword,
}

extension AuthExceptionKindTypeX on AuthExceptionKind {
  bool get isOtpException =>
      this == AuthExceptionKind.otpExpired ||
      this == AuthExceptionKind.otpInvalid;
}
