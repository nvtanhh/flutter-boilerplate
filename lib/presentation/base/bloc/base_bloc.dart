import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/exception/exception.dart';
import '../../../core/mixin/log_mixin.dart';
import 'common/common_bloc.dart';

part 'base_event.dart';
part 'base_state.dart';

abstract class BaseBloc<E extends BaseEvent, S extends BaseState> extends Bloc<E, S> with LogMixin {
  BaseBloc(S initialState) : super(initialState);

  late final CommonBloc _commonBloc;

  set commonBloc(CommonBloc commonBloc) {
    _commonBloc = commonBloc;
  }

  CommonBloc get commonBloc => this is CommonBloc ? this as CommonBloc : _commonBloc;

  @override
  void add(E event) {
    if (!isClosed) {
      super.add(event);
    } else {
      logError('Cannot add new event $event because $runtimeType was closed');
    }
  }

  void showLoading() {
    commonBloc.add(const LoadingVisibilityEmitted(isLoading: true));
  }

  void hideLoading() {
    commonBloc.add(const LoadingVisibilityEmitted(isLoading: false));
  }

  Future<void> runBlocCatching({
    required Future<void> Function() action,
    Future<void> Function(AppException)? doOnError,
    Future<void> Function()? doOnSubscribe,
    Future<void> Function()? doOnSuccessOrError,
    Future<void> Function()? doOnEventCompleted,
    bool handleLoading = true,
  }) async {
    try {
      await doOnSubscribe?.call();
      if (handleLoading) {
        showLoading();
      }

      await action.call();

      if (handleLoading) {
        hideLoading();
      }
      await doOnSuccessOrError?.call();
    } on AppException catch (e) {
      if (handleLoading) {
        hideLoading();
      }
      await doOnSuccessOrError?.call();
      await doOnError?.call(e);

      if (_isRefreshTokenFailed(e)) {
        _onRefreshTokenFailed();
      }
    } finally {
      await doOnEventCompleted?.call();
    }
  }

  bool _isRefreshTokenFailed(AppException exception) {
    if (exception is! ApiException) {
      return false;
    }

    return exception.kind == ApiExceptionKind.refreshTokenFailed;
  }

  void _onRefreshTokenFailed() {
    commonBloc.add(const ForceLogoutButtonPressed());
  }
}
