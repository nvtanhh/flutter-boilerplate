part of 'overlay_bloc.dart';

@freezed
class AppOverlayEvent with _$AppOverlayEvent {
  const factory AppOverlayEvent.showToast({
    required String message,
    required ToastType type,
    Duration? duration,
  }) = _ShowToast;

  const factory AppOverlayEvent.hideToast() = _HideToast;

  const factory AppOverlayEvent.showNotification({
    required AppNotification notification,
    required void Function() onTap,
  }) = _ShowNotification;
  const factory AppOverlayEvent.hideNotification() = _HideNotification;

  const factory AppOverlayEvent.showLoading() = _ShowLoading;
  const factory AppOverlayEvent.hideLoading() = _HideLoading;
}
