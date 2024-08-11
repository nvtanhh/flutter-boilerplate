part of 'overlay_bloc.dart';

@freezed
class AppOverlayState with _$AppOverlayState {
  const AppOverlayState._();

  const factory AppOverlayState({
    ToastMessage? toastMessage,
    PushNotificationWrapper? notificationWrapper,
    @Default(false) bool isLoading,
  }) = _AppOverlayState;

  AppNotification? get notification => notificationWrapper?.notification;
}

@freezed
class ToastMessage with _$ToastMessage {
  const factory ToastMessage({
    required String message,
    required ToastType type,
  }) = _ToastMessage;
}

class PushNotificationWrapper extends Equatable {
  final AppNotification notification;
  final void Function() onTap;

  const PushNotificationWrapper({
    required this.notification,
    required this.onTap,
  });

  @override
  List<Object?> get props => [notification, onTap];
}
