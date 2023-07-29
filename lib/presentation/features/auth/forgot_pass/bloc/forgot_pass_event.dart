part of 'forgot_pass_bloc.dart';

abstract class ForgotPassEvent extends BaseEvent {}

@freezed
class EmailChanged extends ForgotPassEvent with _$EmailChanged {
  const factory EmailChanged(String email) = _EmailChanged;
}

@freezed
class RequestSubmitted extends ForgotPassEvent with _$RequestSubmitted {
  const factory RequestSubmitted() = _RequestSubmitted;
}
