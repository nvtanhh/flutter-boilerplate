import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/extension/number.dart';
import '../../../../domain/usecases/auth/logout_usecase.dart';
import '../../../routing/routing.dart';

part 'common_event.dart';
part 'common_state.dart';
part 'common_bloc.freezed.dart';

@injectable
class CommonBloc extends Bloc<CommonEvent, CommonState> {
  CommonBloc(
    this._appNavigator,
    this._logoutUseCase,
  ) : super(const CommonState()) {
    on<LoadingVisibilityEmitted>(_onLoadingVisibilityEmitted);

    on<ForceLogoutButtonPressed>(_onForceLogoutButtonPressed);
  }

  final AppNavigator _appNavigator;
  final LogoutUseCase _logoutUseCase;

  FutureOr<void> _onLoadingVisibilityEmitted(LoadingVisibilityEmitted event, Emitter<CommonState> emit) {
    emit(
      state.copyWith(
        isLoading: state.loadingCount == 0 && event.isLoading
            ? true
            : state.loadingCount == 1 && !event.isLoading || state.loadingCount <= 0
                ? false
                : state.isLoading,
        loadingCount: event.isLoading ? state.loadingCount.plus(1) : state.loadingCount.minus(1),
      ),
    );
  }

  FutureOr<void> _onForceLogoutButtonPressed(ForceLogoutButtonPressed event, Emitter<CommonState> emit) async {
    await _logoutUseCase.execute();
  }
}
