part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial({
    @Default(LocaleConstants.defaultLocale) String locale,
    @Default(false) bool isLoggedIn,
    @Default(false) bool isDarkTheme,
  }) = _Initial;
}
