import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/configs/di/di.dart';
import '../../../core/exceptions/all.dart';
import '../../../core/helpers/stream/dispose_bag.dart';
import '../../../core/mixins/log_mixin.dart';
import '../../../core/utils/log_util.dart';
import '../../../domain/entities/user.dart';
import '../../common_blocs/app/app_bloc.dart';
import 'common/common_bloc.dart';

part 'base_event.dart';
part 'base_state.dart';

abstract class BaseBloc<E extends BaseEvent, S extends BaseState> extends Bloc<E, S>
    with LogMixin, BaseBlocDelegateMixin<S> {
  BaseBloc(super.initialState);

  @override
  void add(E event) {
    if (!isClosed) {
      super.add(event);
    } else {
      logError('Cannot add new event $event because $runtimeType was closed');
    }
  }

  @mustCallSuper
  @override
  Future<void> close() {
    return super.close();
  }
}

abstract class BaseCubit<S extends BaseState> extends Cubit<S> with LogMixin, BaseBlocDelegateMixin<S> {
  BaseCubit(super.initialState);

  @override
  void emit(S state) {
    if (!isClosed) {
      super.emit(state);
    } else {
      logError('Cannot emit new state $state because $runtimeType was closed');
    }
  }

  @mustCallSuper
  @override
  Future<void> close() {
    return super.close();
  }
}

mixin BaseBlocDelegateMixin<S extends BaseState> on BlocBase<S> {
  CommonBloc? _commonBloc;

  DisposeBag? _disposeBag;
  DisposeBag get disposeBag => _disposeBag ??= DisposeBag();

  set commonBloc(CommonBloc commonBloc) {
    _commonBloc = commonBloc;
  }

  // Call this getter only when the commonBloc is set
  CommonBloc get commonBloc => this is CommonBloc ? this as CommonBloc : _commonBloc!;

  // Only use this getter when you are sure that the current user is logged in
  User get currentUser => getIt.get<AppBloc>().state.currentUser!;

  bool get isUserLoggedIn => getIt.get<AppBloc>().state.currentUser != null;

  /// If expected to be used (Renderings) in multiple places else it should be
  /// provided in the widget tree where it is expected to be used.
  ///
  /// If isSingletonBloc is true, [BasePageState] will not dispose the bloc
  bool get isSingletonBloc => false;

  @protected
  void addAutoDisposeItem(Object item) {
    disposeBag.addDisposable(item);
  }

  void showLoading() => _addVisibilityEvent(true);

  void hideLoading() => _addVisibilityEvent(false);

  void _addVisibilityEvent(bool isLoading) {
    commonBloc.add(
      CommonEvent.loadingVisibilityEmitted(isLoading: isLoading),
    );
  }

  Future<void> runBlocCatching({
    required FutureOr<void> Function() action,
    FutureOr<void> Function(AppException)? doOnError,
    FutureOr<void> Function()? doOnSubscribe,
    FutureOr<void> Function()? doOnSuccessOrError,
    FutureOr<void> Function()? doOnEventCompleted,
    bool handleLoading = true,
    bool handleError = false,
    String? overrideErrorMessage,
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
      LogUtil.e(e, name: runtimeType.toString());

      if (handleLoading) {
        hideLoading();
      }

      if (!handleError && _isRefreshTokenFailed(e)) {
        _onRefreshTokenFailed();
      }

      await doOnSuccessOrError?.call();
      await doOnError?.call(e);

      if (handleError) {
        await addException(
          AppExceptionWrapper(
            appException: e,
            exceptionCompleter: Completer<void>(),
            overrideMessage: overrideErrorMessage,
          ),
        );
      }
    } finally {
      if (handleLoading && commonBloc.state.isLoading) {
        hideLoading();
      }

      await doOnEventCompleted?.call();
    }
  }

  bool _isRefreshTokenFailed(AppException exception) {
    if (exception is! ApiException) {
      return false;
    }

    return exception.kind == ApiExceptionKind.refreshTokenFailed;
  }

  Future<void> addException(AppExceptionWrapper appExceptionWrapper) async {
    commonBloc.add(
      CommonEvent.exceptionEmitted(appExceptionWrapper: appExceptionWrapper),
    );

    return appExceptionWrapper.exceptionCompleter?.future;
  }

  void _onRefreshTokenFailed() {
    commonBloc.add(const CommonEvent.forceLogoutButtonPressed());
  }

  @mustCallSuper
  @override
  Future<void> close() {
    _disposeBag?.dispose();

    return super.close();
  }
}
