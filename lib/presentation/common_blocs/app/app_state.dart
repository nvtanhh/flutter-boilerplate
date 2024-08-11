part of 'app_bloc.dart';

@freezed
class AppState extends BaseState with _$AppState {
  const AppState._();

  const factory AppState({
    @Default(LocaleConfig.defaultLocale) String locale,
    @Default(false) bool isLoggedIn,
    @Default(false) bool isDarkTheme,
    User? currentUser,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}
