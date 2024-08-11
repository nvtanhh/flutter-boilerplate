import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/constants/duration_constants.dart';
import '../../../domain/entities/app_notification.dart';
import '../../common_widgets/toast.dart';

part 'overlay_bloc.freezed.dart';
part 'overlay_event.dart';
part 'overlay_state.dart';

@lazySingleton
class AppOverlayBloc extends Bloc<AppOverlayEvent, AppOverlayState> {
  AppOverlayBloc() : super(const AppOverlayState()) {
    on<AppOverlayEvent>((event, emit) async {
      await event.map(
        showToast: (e) => _showToast(e, emit),
        hideToast: (_) => _hideToast(emit),
        showNotification: (e) => _showNotification(e, emit),
        hideNotification: (_) => _hideNotification(emit),
        showLoading: (_) => _showLoading(emit),
        hideLoading: (_) => _hideLoading(emit),
      );
    });
  }

  Timer? _hideNotificationTimer;
  Timer? _hideToastTimer;

  FutureOr<void> _showToast(
    _ShowToast event,
    Emitter<AppOverlayState> emit,
  ) async {
    if (state.toastMessage != null) {
      add(const _HideToast());
      await Future.delayed(const Duration(milliseconds: 50));
    }

    final alertMessage = ToastMessage(
      message: event.message,
      type: event.type,
    );

    _hideToastTimer?.cancel();

    emit(state.copyWith(toastMessage: alertMessage));

    _hideToastTimer = Timer(
      DurationConstants.defaultNotificationDuration,
      () {
        if (state.toastMessage != alertMessage) {
          return;
        }

        add(const _HideToast());
      },
    );
  }

  FutureOr<void> _hideToast(Emitter<AppOverlayState> emit) {
    emit(state.copyWith(toastMessage: null));
    _hideToastTimer?.cancel();
  }

  FutureOr<void> _showNotification(
    _ShowNotification event,
    Emitter<AppOverlayState> emit,
  ) async {
    if (state.notification != null) {
      add(const _HideNotification());
      await Future.delayed(const Duration(milliseconds: 50));
    }

    _hideNotificationTimer?.cancel();

    emit(
      state.copyWith(
        notificationWrapper: PushNotificationWrapper(
          notification: event.notification,
          onTap: event.onTap,
        ),
      ),
    );

    _hideNotificationTimer = Timer(
      DurationConstants.defaultNotificationDuration,
      () {
        if (state.notificationWrapper?.notification != event.notification) {
          return;
        }

        add(const _HideNotification());
      },
    );
  }

  FutureOr<void> _hideNotification(Emitter<AppOverlayState> emit) {
    emit(state.copyWith(notificationWrapper: null));
    _hideNotificationTimer?.cancel();
  }

  FutureOr<void> _showLoading(Emitter<AppOverlayState> emit) {
    emit(state.copyWith(isLoading: true));
  }

  FutureOr<void> _hideLoading(Emitter<AppOverlayState> emit) {
    emit(state.copyWith(isLoading: false));
  }
}
