part of 'sign_in_bloc.dart';

abstract class SignInEvent extends BaseEvent {}

@freezed
class EmailChanged extends SignInEvent with _$EmailChanged {
  const factory EmailChanged(String email) = _EmailChanged;
}

@freezed
class PasswordChanged extends SignInEvent with _$PasswordChanged {
  const factory PasswordChanged(String password) = _PasswordChanged;
}

@freezed
class SignInSubmitted extends SignInEvent with _$SignInSubmitted {
  const factory SignInSubmitted() = _SignInSubmitted;
}
