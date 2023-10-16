part of 'sign_in_bloc.dart';

enum SignInFailureReason {
  invalidCredentials,
  unknown,
}

@freezed
class SignInState extends BaseState with _$SignInState {
  const SignInState._();

  factory SignInState.initial() => const SignInState();

  const factory SignInState({
    @Default('') String email,
    @Default('') String password,
    @Default(0) int submitCount,
    @Default(false) bool isSubmitting,
    @Default(false) bool isSignInSuccess,
    SignInFailureReason? failureReason,
  }) = _SignInState;

  bool get isEmailValid => ValidationUtil.isValidEmail(email);

  bool get isFormValid => isEmailValid && password.isNotEmpty;

  bool get hadBeenSubmitted => submitCount > 0;
}
