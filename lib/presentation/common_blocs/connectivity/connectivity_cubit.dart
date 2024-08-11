import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'connectivity_cubit.freezed.dart';
part 'connectivity_state.dart';

@lazySingleton
class ConnectivityCubit extends Cubit<ConnectivityState> {
  ConnectivityCubit() : super(const ConnectivityState()) {
    _monitorConnectivity();
  }

  StreamSubscription? _internetConnectionStreamSubscription;

  void _monitorConnectivity() {
    checkConnectivity();
    _internetConnectionStreamSubscription =
        Connectivity().onConnectivityChanged.listen(_emitInternetConnection);
  }

  Future<void> checkConnectivity() async {
    final result = await Connectivity().checkConnectivity();
    _emitInternetConnection(result);
  }

  void _emitInternetConnection(ConnectivityResult result) {
    if (result == ConnectivityResult.wifi) {
      // ignore: avoid_redundant_argument_values
      emit(const ConnectivityState(connectionType: ConnectionType.wifi));
    } else if (result == ConnectivityResult.mobile) {
      emit(const ConnectivityState(connectionType: ConnectionType.mobile));
    } else {
      emit(const ConnectivityState(connectionType: ConnectionType.none));
    }
  }

  @override
  Future<void> close() async {
    await _internetConnectionStreamSubscription?.cancel();

    return super.close();
  }
}
