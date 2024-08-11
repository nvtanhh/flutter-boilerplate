import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/base/app_exception_wrapper.dart';
import '../../../../core/extensions/number_extensions.dart';
import '../../../../domain/usecases/auth/logout_usecase.dart';

part 'common_bloc.freezed.dart';
part 'common_event.dart';
part 'common_state.dart';

@injectable
class CommonBloc extends Bloc<CommonEvent, CommonState> {
  final LogoutUseCase _logoutUseCase;

  CommonBloc(
    this._logoutUseCase,
  ) : super(const CommonState()) {
    on<CommonEvent>((event, emit) async {
      await event.map(
        exceptionEmitted: (e) => _onExceptionEmitted(e, emit),
        loadingVisibilityEmitted: (e) => _onLoadingVisibilityEmitted(e, emit),
        forceLogoutButtonPressed: (e) => _onForceLogoutButtonPressed(e, emit),
      );
    });
  }

  FutureOr<void> _onExceptionEmitted(
    _ExceptionEmitted event,
    Emitter<CommonState> emit,
  ) {
    emit(state.copyWith(appExceptionWrapper: event.appExceptionWrapper));
  }

  FutureOr<void> _onLoadingVisibilityEmitted(
    _LoadingVisibilityEmitted event,
    Emitter<CommonState> emit,
  ) {
    emit(
      state.copyWith(
        isLoading: state.loadingCount == 0 && event.isLoading
            ? true
            : state.loadingCount == 1 && !event.isLoading ||
                    state.loadingCount <= 0
                ? false
                : state.isLoading,
        loadingCount: event.isLoading
            ? state.loadingCount.plus(1)
            : state.loadingCount.minus(1),
      ),
    );
  }

  FutureOr<void> _onForceLogoutButtonPressed(
    _ForceLogoutButtonPressed event,
    Emitter<CommonState> emit,
  ) async {
    await _logoutUseCase.execute();
  }
}
