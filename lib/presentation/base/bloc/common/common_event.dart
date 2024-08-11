part of 'common_bloc.dart';

@freezed
class CommonEvent with _$CommonEvent {
  const factory CommonEvent.exceptionEmitted({
    required AppExceptionWrapper appExceptionWrapper,
  }) = _ExceptionEmitted;
  const factory CommonEvent.loadingVisibilityEmitted({
    required bool isLoading,
  }) = _LoadingVisibilityEmitted;
  const factory CommonEvent.forceLogoutButtonPressed() =
      _ForceLogoutButtonPressed;
}
