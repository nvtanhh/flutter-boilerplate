part of 'sign_up_bloc.dart';

@freezed
class SignUpState extends BaseState with _$SignUpState {
  const SignUpState._();

  factory SignUpState.initial() => const SignUpState();

  const factory SignUpState({
    @Default('') String username,
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
    @Default(0) int submitCount,
    @Default(false) bool isSubmitting,
    @Default(false) bool isSignUpSuccess,
    AuthExceptionKind? failureReason,
  }) = _SignUpState;

  bool get isEmailValid => ValidationUtil.isValidEmail(email);

  bool get isPasswordValid => ValidationUtil.isValidPassword(password);

  bool get isPasswordMatch => password == confirmPassword;

  bool get isFormValid => isEmailValid && isPasswordValid && isPasswordMatch;

  bool get hadBeenSubmitted => submitCount > 0;

  bool get isEmailAlreadyInUse =>
      failureReason == AuthExceptionKind.emailAlreadyInUse;

  bool get isPasswordTooWeak => failureReason == AuthExceptionKind.weakPassword;
}
