part of 'forgot_pass_bloc.dart';

enum ForgotPassFailureReason {
  emailNotExists,
  unknown,
}

@freezed
class ForgotPassState extends BaseState with _$ForgotPassState {
  const ForgotPassState._();

  factory ForgotPassState.initial() => const ForgotPassState();

  const factory ForgotPassState({
    @Default('') String email,
    @Default(0) int submitCount,
    @Default(false) bool isSubmitting,
    @Default(false) bool requestSuccess,
    ForgotPassFailureReason? failureReason,
  }) = _ForgotPassState;

  bool get isEmailValid => ValidationUtil.isValidEmail(email);

  bool get hadBeenSubmitted => submitCount > 0;
}
