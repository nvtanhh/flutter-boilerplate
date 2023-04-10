import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/config/logging_config.dart';
import '../../../core/mixin/log_mixin.dart';

class AppBlocObserver extends BlocObserver with LogMixin {
  AppBlocObserver({
    this.logOnChange = LogConfig.logOnBlocChange,
    this.logOnCreate = LogConfig.logOnBlocCreate,
    this.logOnClose = LogConfig.logOnBlocClose,
    this.logOnError = LogConfig.logOnBlocError,
    this.logOnEvent = LogConfig.logOnBlocEvent,
    this.logOnTransition = LogConfig.logOnBlocTransition,
  });

  final bool logOnChange;
  final bool logOnCreate;
  final bool logOnClose;
  final bool logOnError;
  final bool logOnEvent;
  final bool logOnTransition;

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (logOnChange) {
      logDebug('onChange $change', name: bloc.runtimeType.toString());
    }
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    if (logOnCreate) {
      logDebug('created', name: bloc.runtimeType.toString());
    }
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    if (logOnClose) {
      logDebug('closed', name: bloc.runtimeType.toString());
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    if (logOnError) {
      logErrorWithName('onError $error', name: bloc.runtimeType.toString());
    }
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (logOnEvent) {
      logDebug('onEvent $event', name: bloc.runtimeType.toString());
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (logOnTransition) {
      logDebug('onTransition $transition', name: bloc.runtimeType.toString());
    }
  }
}
