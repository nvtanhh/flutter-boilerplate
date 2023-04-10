part of 'common_bloc.dart';

abstract class CommonEvent {
  const CommonEvent();
}

@freezed
class LoadingVisibilityEmitted extends CommonEvent with _$LoadingVisibilityEmitted {
  const factory LoadingVisibilityEmitted({required bool isLoading}) = _LoadingVisibilityEmitted;
}

@freezed
class ForceLogoutButtonPressed extends CommonEvent with _$ForceLogoutButtonPressed {
  const factory ForceLogoutButtonPressed() = _ForceLogoutButtonPressed;
}
