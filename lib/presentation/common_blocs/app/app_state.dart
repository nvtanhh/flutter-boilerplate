part of 'app_bloc.dart';

@freezed
class AppState extends BaseState with _$AppState {
  const factory AppState({
    @Default(LocaleConstants.defaultLocale) String locale,
    @Default(false) bool isLoggedIn,
    @Default(false) bool isDarkTheme,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
