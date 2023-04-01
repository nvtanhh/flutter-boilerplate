import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../core/constants/locale_constants.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';
part 'app_bloc.g.dart';

class AppBloc extends Bloc<AppEvent, AppState> with HydratedMixin {
  AppBloc() : super(const AppState()) {
    on<IsLoggedInStatusChanged>(_onIsLoggedInStatusChanged);

    on<AppThemeChanged>(_onAppThemeChanged);

    on<AppLanguageChanged>(_onAppLanguageChanged);

    on<AppInitiated>(_onAppInitiated);
  }

  void _onIsLoggedInStatusChanged(IsLoggedInStatusChanged event, Emitter<AppState> emit) {
    emit(state.copyWith(isLoggedIn: event.isLoggedIn));
  }

  void _onAppThemeChanged(AppThemeChanged event, Emitter<AppState> emit) {
    emit(state.copyWith(isDarkTheme: event.isDarkTheme));
  }

  void _onAppLanguageChanged(AppLanguageChanged event, Emitter<AppState> emit) {
    emit(state.copyWith(locale: event.locale));
  }

  FutureOr<void> _onAppInitiated(AppInitiated event, Emitter<AppState> emit) {}

  @override
  AppState? fromJson(Map<String, dynamic> json) {
    return AppState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AppState state) {
    return state.toJson();
  }
}
