// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overlay_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppOverlayEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, ToastType type, Duration? duration)
        showToast,
    required TResult Function() hideToast,
    required TResult Function(
            AppNotification notification, void Function() onTap)
        showNotification,
    required TResult Function() hideNotification,
    required TResult Function() showLoading,
    required TResult Function() hideLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, ToastType type, Duration? duration)?
        showToast,
    TResult? Function()? hideToast,
    TResult? Function(AppNotification notification, void Function() onTap)?
        showNotification,
    TResult? Function()? hideNotification,
    TResult? Function()? showLoading,
    TResult? Function()? hideLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, ToastType type, Duration? duration)?
        showToast,
    TResult Function()? hideToast,
    TResult Function(AppNotification notification, void Function() onTap)?
        showNotification,
    TResult Function()? hideNotification,
    TResult Function()? showLoading,
    TResult Function()? hideLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowToast value) showToast,
    required TResult Function(_HideToast value) hideToast,
    required TResult Function(_ShowNotification value) showNotification,
    required TResult Function(_HideNotification value) hideNotification,
    required TResult Function(_ShowLoading value) showLoading,
    required TResult Function(_HideLoading value) hideLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowToast value)? showToast,
    TResult? Function(_HideToast value)? hideToast,
    TResult? Function(_ShowNotification value)? showNotification,
    TResult? Function(_HideNotification value)? hideNotification,
    TResult? Function(_ShowLoading value)? showLoading,
    TResult? Function(_HideLoading value)? hideLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowToast value)? showToast,
    TResult Function(_HideToast value)? hideToast,
    TResult Function(_ShowNotification value)? showNotification,
    TResult Function(_HideNotification value)? hideNotification,
    TResult Function(_ShowLoading value)? showLoading,
    TResult Function(_HideLoading value)? hideLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppOverlayEventCopyWith<$Res> {
  factory $AppOverlayEventCopyWith(
          AppOverlayEvent value, $Res Function(AppOverlayEvent) then) =
      _$AppOverlayEventCopyWithImpl<$Res, AppOverlayEvent>;
}

/// @nodoc
class _$AppOverlayEventCopyWithImpl<$Res, $Val extends AppOverlayEvent>
    implements $AppOverlayEventCopyWith<$Res> {
  _$AppOverlayEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShowToastImplCopyWith<$Res> {
  factory _$$ShowToastImplCopyWith(
          _$ShowToastImpl value, $Res Function(_$ShowToastImpl) then) =
      __$$ShowToastImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, ToastType type, Duration? duration});
}

/// @nodoc
class __$$ShowToastImplCopyWithImpl<$Res>
    extends _$AppOverlayEventCopyWithImpl<$Res, _$ShowToastImpl>
    implements _$$ShowToastImplCopyWith<$Res> {
  __$$ShowToastImplCopyWithImpl(
      _$ShowToastImpl _value, $Res Function(_$ShowToastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? type = null,
    Object? duration = freezed,
  }) {
    return _then(_$ShowToastImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ToastType,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc

class _$ShowToastImpl implements _ShowToast {
  const _$ShowToastImpl(
      {required this.message, required this.type, this.duration});

  @override
  final String message;
  @override
  final ToastType type;
  @override
  final Duration? duration;

  @override
  String toString() {
    return 'AppOverlayEvent.showToast(message: $message, type: $type, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowToastImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, type, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowToastImplCopyWith<_$ShowToastImpl> get copyWith =>
      __$$ShowToastImplCopyWithImpl<_$ShowToastImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, ToastType type, Duration? duration)
        showToast,
    required TResult Function() hideToast,
    required TResult Function(
            AppNotification notification, void Function() onTap)
        showNotification,
    required TResult Function() hideNotification,
    required TResult Function() showLoading,
    required TResult Function() hideLoading,
  }) {
    return showToast(message, type, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, ToastType type, Duration? duration)?
        showToast,
    TResult? Function()? hideToast,
    TResult? Function(AppNotification notification, void Function() onTap)?
        showNotification,
    TResult? Function()? hideNotification,
    TResult? Function()? showLoading,
    TResult? Function()? hideLoading,
  }) {
    return showToast?.call(message, type, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, ToastType type, Duration? duration)?
        showToast,
    TResult Function()? hideToast,
    TResult Function(AppNotification notification, void Function() onTap)?
        showNotification,
    TResult Function()? hideNotification,
    TResult Function()? showLoading,
    TResult Function()? hideLoading,
    required TResult orElse(),
  }) {
    if (showToast != null) {
      return showToast(message, type, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowToast value) showToast,
    required TResult Function(_HideToast value) hideToast,
    required TResult Function(_ShowNotification value) showNotification,
    required TResult Function(_HideNotification value) hideNotification,
    required TResult Function(_ShowLoading value) showLoading,
    required TResult Function(_HideLoading value) hideLoading,
  }) {
    return showToast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowToast value)? showToast,
    TResult? Function(_HideToast value)? hideToast,
    TResult? Function(_ShowNotification value)? showNotification,
    TResult? Function(_HideNotification value)? hideNotification,
    TResult? Function(_ShowLoading value)? showLoading,
    TResult? Function(_HideLoading value)? hideLoading,
  }) {
    return showToast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowToast value)? showToast,
    TResult Function(_HideToast value)? hideToast,
    TResult Function(_ShowNotification value)? showNotification,
    TResult Function(_HideNotification value)? hideNotification,
    TResult Function(_ShowLoading value)? showLoading,
    TResult Function(_HideLoading value)? hideLoading,
    required TResult orElse(),
  }) {
    if (showToast != null) {
      return showToast(this);
    }
    return orElse();
  }
}

abstract class _ShowToast implements AppOverlayEvent {
  const factory _ShowToast(
      {required final String message,
      required final ToastType type,
      final Duration? duration}) = _$ShowToastImpl;

  String get message;
  ToastType get type;
  Duration? get duration;
  @JsonKey(ignore: true)
  _$$ShowToastImplCopyWith<_$ShowToastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HideToastImplCopyWith<$Res> {
  factory _$$HideToastImplCopyWith(
          _$HideToastImpl value, $Res Function(_$HideToastImpl) then) =
      __$$HideToastImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideToastImplCopyWithImpl<$Res>
    extends _$AppOverlayEventCopyWithImpl<$Res, _$HideToastImpl>
    implements _$$HideToastImplCopyWith<$Res> {
  __$$HideToastImplCopyWithImpl(
      _$HideToastImpl _value, $Res Function(_$HideToastImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HideToastImpl implements _HideToast {
  const _$HideToastImpl();

  @override
  String toString() {
    return 'AppOverlayEvent.hideToast()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideToastImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, ToastType type, Duration? duration)
        showToast,
    required TResult Function() hideToast,
    required TResult Function(
            AppNotification notification, void Function() onTap)
        showNotification,
    required TResult Function() hideNotification,
    required TResult Function() showLoading,
    required TResult Function() hideLoading,
  }) {
    return hideToast();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, ToastType type, Duration? duration)?
        showToast,
    TResult? Function()? hideToast,
    TResult? Function(AppNotification notification, void Function() onTap)?
        showNotification,
    TResult? Function()? hideNotification,
    TResult? Function()? showLoading,
    TResult? Function()? hideLoading,
  }) {
    return hideToast?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, ToastType type, Duration? duration)?
        showToast,
    TResult Function()? hideToast,
    TResult Function(AppNotification notification, void Function() onTap)?
        showNotification,
    TResult Function()? hideNotification,
    TResult Function()? showLoading,
    TResult Function()? hideLoading,
    required TResult orElse(),
  }) {
    if (hideToast != null) {
      return hideToast();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowToast value) showToast,
    required TResult Function(_HideToast value) hideToast,
    required TResult Function(_ShowNotification value) showNotification,
    required TResult Function(_HideNotification value) hideNotification,
    required TResult Function(_ShowLoading value) showLoading,
    required TResult Function(_HideLoading value) hideLoading,
  }) {
    return hideToast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowToast value)? showToast,
    TResult? Function(_HideToast value)? hideToast,
    TResult? Function(_ShowNotification value)? showNotification,
    TResult? Function(_HideNotification value)? hideNotification,
    TResult? Function(_ShowLoading value)? showLoading,
    TResult? Function(_HideLoading value)? hideLoading,
  }) {
    return hideToast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowToast value)? showToast,
    TResult Function(_HideToast value)? hideToast,
    TResult Function(_ShowNotification value)? showNotification,
    TResult Function(_HideNotification value)? hideNotification,
    TResult Function(_ShowLoading value)? showLoading,
    TResult Function(_HideLoading value)? hideLoading,
    required TResult orElse(),
  }) {
    if (hideToast != null) {
      return hideToast(this);
    }
    return orElse();
  }
}

abstract class _HideToast implements AppOverlayEvent {
  const factory _HideToast() = _$HideToastImpl;
}

/// @nodoc
abstract class _$$ShowNotificationImplCopyWith<$Res> {
  factory _$$ShowNotificationImplCopyWith(_$ShowNotificationImpl value,
          $Res Function(_$ShowNotificationImpl) then) =
      __$$ShowNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppNotification notification, void Function() onTap});
}

/// @nodoc
class __$$ShowNotificationImplCopyWithImpl<$Res>
    extends _$AppOverlayEventCopyWithImpl<$Res, _$ShowNotificationImpl>
    implements _$$ShowNotificationImplCopyWith<$Res> {
  __$$ShowNotificationImplCopyWithImpl(_$ShowNotificationImpl _value,
      $Res Function(_$ShowNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
    Object? onTap = null,
  }) {
    return _then(_$ShowNotificationImpl(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as AppNotification,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ));
  }
}

/// @nodoc

class _$ShowNotificationImpl implements _ShowNotification {
  const _$ShowNotificationImpl(
      {required this.notification, required this.onTap});

  @override
  final AppNotification notification;
  @override
  final void Function() onTap;

  @override
  String toString() {
    return 'AppOverlayEvent.showNotification(notification: $notification, onTap: $onTap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowNotificationImpl &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.onTap, onTap) || other.onTap == onTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification, onTap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowNotificationImplCopyWith<_$ShowNotificationImpl> get copyWith =>
      __$$ShowNotificationImplCopyWithImpl<_$ShowNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, ToastType type, Duration? duration)
        showToast,
    required TResult Function() hideToast,
    required TResult Function(
            AppNotification notification, void Function() onTap)
        showNotification,
    required TResult Function() hideNotification,
    required TResult Function() showLoading,
    required TResult Function() hideLoading,
  }) {
    return showNotification(notification, onTap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, ToastType type, Duration? duration)?
        showToast,
    TResult? Function()? hideToast,
    TResult? Function(AppNotification notification, void Function() onTap)?
        showNotification,
    TResult? Function()? hideNotification,
    TResult? Function()? showLoading,
    TResult? Function()? hideLoading,
  }) {
    return showNotification?.call(notification, onTap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, ToastType type, Duration? duration)?
        showToast,
    TResult Function()? hideToast,
    TResult Function(AppNotification notification, void Function() onTap)?
        showNotification,
    TResult Function()? hideNotification,
    TResult Function()? showLoading,
    TResult Function()? hideLoading,
    required TResult orElse(),
  }) {
    if (showNotification != null) {
      return showNotification(notification, onTap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowToast value) showToast,
    required TResult Function(_HideToast value) hideToast,
    required TResult Function(_ShowNotification value) showNotification,
    required TResult Function(_HideNotification value) hideNotification,
    required TResult Function(_ShowLoading value) showLoading,
    required TResult Function(_HideLoading value) hideLoading,
  }) {
    return showNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowToast value)? showToast,
    TResult? Function(_HideToast value)? hideToast,
    TResult? Function(_ShowNotification value)? showNotification,
    TResult? Function(_HideNotification value)? hideNotification,
    TResult? Function(_ShowLoading value)? showLoading,
    TResult? Function(_HideLoading value)? hideLoading,
  }) {
    return showNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowToast value)? showToast,
    TResult Function(_HideToast value)? hideToast,
    TResult Function(_ShowNotification value)? showNotification,
    TResult Function(_HideNotification value)? hideNotification,
    TResult Function(_ShowLoading value)? showLoading,
    TResult Function(_HideLoading value)? hideLoading,
    required TResult orElse(),
  }) {
    if (showNotification != null) {
      return showNotification(this);
    }
    return orElse();
  }
}

abstract class _ShowNotification implements AppOverlayEvent {
  const factory _ShowNotification(
      {required final AppNotification notification,
      required final void Function() onTap}) = _$ShowNotificationImpl;

  AppNotification get notification;
  void Function() get onTap;
  @JsonKey(ignore: true)
  _$$ShowNotificationImplCopyWith<_$ShowNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HideNotificationImplCopyWith<$Res> {
  factory _$$HideNotificationImplCopyWith(_$HideNotificationImpl value,
          $Res Function(_$HideNotificationImpl) then) =
      __$$HideNotificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideNotificationImplCopyWithImpl<$Res>
    extends _$AppOverlayEventCopyWithImpl<$Res, _$HideNotificationImpl>
    implements _$$HideNotificationImplCopyWith<$Res> {
  __$$HideNotificationImplCopyWithImpl(_$HideNotificationImpl _value,
      $Res Function(_$HideNotificationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HideNotificationImpl implements _HideNotification {
  const _$HideNotificationImpl();

  @override
  String toString() {
    return 'AppOverlayEvent.hideNotification()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideNotificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, ToastType type, Duration? duration)
        showToast,
    required TResult Function() hideToast,
    required TResult Function(
            AppNotification notification, void Function() onTap)
        showNotification,
    required TResult Function() hideNotification,
    required TResult Function() showLoading,
    required TResult Function() hideLoading,
  }) {
    return hideNotification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, ToastType type, Duration? duration)?
        showToast,
    TResult? Function()? hideToast,
    TResult? Function(AppNotification notification, void Function() onTap)?
        showNotification,
    TResult? Function()? hideNotification,
    TResult? Function()? showLoading,
    TResult? Function()? hideLoading,
  }) {
    return hideNotification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, ToastType type, Duration? duration)?
        showToast,
    TResult Function()? hideToast,
    TResult Function(AppNotification notification, void Function() onTap)?
        showNotification,
    TResult Function()? hideNotification,
    TResult Function()? showLoading,
    TResult Function()? hideLoading,
    required TResult orElse(),
  }) {
    if (hideNotification != null) {
      return hideNotification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowToast value) showToast,
    required TResult Function(_HideToast value) hideToast,
    required TResult Function(_ShowNotification value) showNotification,
    required TResult Function(_HideNotification value) hideNotification,
    required TResult Function(_ShowLoading value) showLoading,
    required TResult Function(_HideLoading value) hideLoading,
  }) {
    return hideNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowToast value)? showToast,
    TResult? Function(_HideToast value)? hideToast,
    TResult? Function(_ShowNotification value)? showNotification,
    TResult? Function(_HideNotification value)? hideNotification,
    TResult? Function(_ShowLoading value)? showLoading,
    TResult? Function(_HideLoading value)? hideLoading,
  }) {
    return hideNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowToast value)? showToast,
    TResult Function(_HideToast value)? hideToast,
    TResult Function(_ShowNotification value)? showNotification,
    TResult Function(_HideNotification value)? hideNotification,
    TResult Function(_ShowLoading value)? showLoading,
    TResult Function(_HideLoading value)? hideLoading,
    required TResult orElse(),
  }) {
    if (hideNotification != null) {
      return hideNotification(this);
    }
    return orElse();
  }
}

abstract class _HideNotification implements AppOverlayEvent {
  const factory _HideNotification() = _$HideNotificationImpl;
}

/// @nodoc
abstract class _$$ShowLoadingImplCopyWith<$Res> {
  factory _$$ShowLoadingImplCopyWith(
          _$ShowLoadingImpl value, $Res Function(_$ShowLoadingImpl) then) =
      __$$ShowLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowLoadingImplCopyWithImpl<$Res>
    extends _$AppOverlayEventCopyWithImpl<$Res, _$ShowLoadingImpl>
    implements _$$ShowLoadingImplCopyWith<$Res> {
  __$$ShowLoadingImplCopyWithImpl(
      _$ShowLoadingImpl _value, $Res Function(_$ShowLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowLoadingImpl implements _ShowLoading {
  const _$ShowLoadingImpl();

  @override
  String toString() {
    return 'AppOverlayEvent.showLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, ToastType type, Duration? duration)
        showToast,
    required TResult Function() hideToast,
    required TResult Function(
            AppNotification notification, void Function() onTap)
        showNotification,
    required TResult Function() hideNotification,
    required TResult Function() showLoading,
    required TResult Function() hideLoading,
  }) {
    return showLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, ToastType type, Duration? duration)?
        showToast,
    TResult? Function()? hideToast,
    TResult? Function(AppNotification notification, void Function() onTap)?
        showNotification,
    TResult? Function()? hideNotification,
    TResult? Function()? showLoading,
    TResult? Function()? hideLoading,
  }) {
    return showLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, ToastType type, Duration? duration)?
        showToast,
    TResult Function()? hideToast,
    TResult Function(AppNotification notification, void Function() onTap)?
        showNotification,
    TResult Function()? hideNotification,
    TResult Function()? showLoading,
    TResult Function()? hideLoading,
    required TResult orElse(),
  }) {
    if (showLoading != null) {
      return showLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowToast value) showToast,
    required TResult Function(_HideToast value) hideToast,
    required TResult Function(_ShowNotification value) showNotification,
    required TResult Function(_HideNotification value) hideNotification,
    required TResult Function(_ShowLoading value) showLoading,
    required TResult Function(_HideLoading value) hideLoading,
  }) {
    return showLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowToast value)? showToast,
    TResult? Function(_HideToast value)? hideToast,
    TResult? Function(_ShowNotification value)? showNotification,
    TResult? Function(_HideNotification value)? hideNotification,
    TResult? Function(_ShowLoading value)? showLoading,
    TResult? Function(_HideLoading value)? hideLoading,
  }) {
    return showLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowToast value)? showToast,
    TResult Function(_HideToast value)? hideToast,
    TResult Function(_ShowNotification value)? showNotification,
    TResult Function(_HideNotification value)? hideNotification,
    TResult Function(_ShowLoading value)? showLoading,
    TResult Function(_HideLoading value)? hideLoading,
    required TResult orElse(),
  }) {
    if (showLoading != null) {
      return showLoading(this);
    }
    return orElse();
  }
}

abstract class _ShowLoading implements AppOverlayEvent {
  const factory _ShowLoading() = _$ShowLoadingImpl;
}

/// @nodoc
abstract class _$$HideLoadingImplCopyWith<$Res> {
  factory _$$HideLoadingImplCopyWith(
          _$HideLoadingImpl value, $Res Function(_$HideLoadingImpl) then) =
      __$$HideLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideLoadingImplCopyWithImpl<$Res>
    extends _$AppOverlayEventCopyWithImpl<$Res, _$HideLoadingImpl>
    implements _$$HideLoadingImplCopyWith<$Res> {
  __$$HideLoadingImplCopyWithImpl(
      _$HideLoadingImpl _value, $Res Function(_$HideLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HideLoadingImpl implements _HideLoading {
  const _$HideLoadingImpl();

  @override
  String toString() {
    return 'AppOverlayEvent.hideLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, ToastType type, Duration? duration)
        showToast,
    required TResult Function() hideToast,
    required TResult Function(
            AppNotification notification, void Function() onTap)
        showNotification,
    required TResult Function() hideNotification,
    required TResult Function() showLoading,
    required TResult Function() hideLoading,
  }) {
    return hideLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, ToastType type, Duration? duration)?
        showToast,
    TResult? Function()? hideToast,
    TResult? Function(AppNotification notification, void Function() onTap)?
        showNotification,
    TResult? Function()? hideNotification,
    TResult? Function()? showLoading,
    TResult? Function()? hideLoading,
  }) {
    return hideLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, ToastType type, Duration? duration)?
        showToast,
    TResult Function()? hideToast,
    TResult Function(AppNotification notification, void Function() onTap)?
        showNotification,
    TResult Function()? hideNotification,
    TResult Function()? showLoading,
    TResult Function()? hideLoading,
    required TResult orElse(),
  }) {
    if (hideLoading != null) {
      return hideLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowToast value) showToast,
    required TResult Function(_HideToast value) hideToast,
    required TResult Function(_ShowNotification value) showNotification,
    required TResult Function(_HideNotification value) hideNotification,
    required TResult Function(_ShowLoading value) showLoading,
    required TResult Function(_HideLoading value) hideLoading,
  }) {
    return hideLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowToast value)? showToast,
    TResult? Function(_HideToast value)? hideToast,
    TResult? Function(_ShowNotification value)? showNotification,
    TResult? Function(_HideNotification value)? hideNotification,
    TResult? Function(_ShowLoading value)? showLoading,
    TResult? Function(_HideLoading value)? hideLoading,
  }) {
    return hideLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowToast value)? showToast,
    TResult Function(_HideToast value)? hideToast,
    TResult Function(_ShowNotification value)? showNotification,
    TResult Function(_HideNotification value)? hideNotification,
    TResult Function(_ShowLoading value)? showLoading,
    TResult Function(_HideLoading value)? hideLoading,
    required TResult orElse(),
  }) {
    if (hideLoading != null) {
      return hideLoading(this);
    }
    return orElse();
  }
}

abstract class _HideLoading implements AppOverlayEvent {
  const factory _HideLoading() = _$HideLoadingImpl;
}

/// @nodoc
mixin _$AppOverlayState {
  ToastMessage? get toastMessage => throw _privateConstructorUsedError;
  PushNotificationWrapper? get notificationWrapper =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppOverlayStateCopyWith<AppOverlayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppOverlayStateCopyWith<$Res> {
  factory $AppOverlayStateCopyWith(
          AppOverlayState value, $Res Function(AppOverlayState) then) =
      _$AppOverlayStateCopyWithImpl<$Res, AppOverlayState>;
  @useResult
  $Res call(
      {ToastMessage? toastMessage,
      PushNotificationWrapper? notificationWrapper,
      bool isLoading});

  $ToastMessageCopyWith<$Res>? get toastMessage;
}

/// @nodoc
class _$AppOverlayStateCopyWithImpl<$Res, $Val extends AppOverlayState>
    implements $AppOverlayStateCopyWith<$Res> {
  _$AppOverlayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toastMessage = freezed,
    Object? notificationWrapper = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      toastMessage: freezed == toastMessage
          ? _value.toastMessage
          : toastMessage // ignore: cast_nullable_to_non_nullable
              as ToastMessage?,
      notificationWrapper: freezed == notificationWrapper
          ? _value.notificationWrapper
          : notificationWrapper // ignore: cast_nullable_to_non_nullable
              as PushNotificationWrapper?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ToastMessageCopyWith<$Res>? get toastMessage {
    if (_value.toastMessage == null) {
      return null;
    }

    return $ToastMessageCopyWith<$Res>(_value.toastMessage!, (value) {
      return _then(_value.copyWith(toastMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppOverlayStateImplCopyWith<$Res>
    implements $AppOverlayStateCopyWith<$Res> {
  factory _$$AppOverlayStateImplCopyWith(_$AppOverlayStateImpl value,
          $Res Function(_$AppOverlayStateImpl) then) =
      __$$AppOverlayStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ToastMessage? toastMessage,
      PushNotificationWrapper? notificationWrapper,
      bool isLoading});

  @override
  $ToastMessageCopyWith<$Res>? get toastMessage;
}

/// @nodoc
class __$$AppOverlayStateImplCopyWithImpl<$Res>
    extends _$AppOverlayStateCopyWithImpl<$Res, _$AppOverlayStateImpl>
    implements _$$AppOverlayStateImplCopyWith<$Res> {
  __$$AppOverlayStateImplCopyWithImpl(
      _$AppOverlayStateImpl _value, $Res Function(_$AppOverlayStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toastMessage = freezed,
    Object? notificationWrapper = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$AppOverlayStateImpl(
      toastMessage: freezed == toastMessage
          ? _value.toastMessage
          : toastMessage // ignore: cast_nullable_to_non_nullable
              as ToastMessage?,
      notificationWrapper: freezed == notificationWrapper
          ? _value.notificationWrapper
          : notificationWrapper // ignore: cast_nullable_to_non_nullable
              as PushNotificationWrapper?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppOverlayStateImpl extends _AppOverlayState {
  const _$AppOverlayStateImpl(
      {this.toastMessage, this.notificationWrapper, this.isLoading = false})
      : super._();

  @override
  final ToastMessage? toastMessage;
  @override
  final PushNotificationWrapper? notificationWrapper;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'AppOverlayState(toastMessage: $toastMessage, notificationWrapper: $notificationWrapper, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppOverlayStateImpl &&
            (identical(other.toastMessage, toastMessage) ||
                other.toastMessage == toastMessage) &&
            (identical(other.notificationWrapper, notificationWrapper) ||
                other.notificationWrapper == notificationWrapper) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, toastMessage, notificationWrapper, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppOverlayStateImplCopyWith<_$AppOverlayStateImpl> get copyWith =>
      __$$AppOverlayStateImplCopyWithImpl<_$AppOverlayStateImpl>(
          this, _$identity);
}

abstract class _AppOverlayState extends AppOverlayState {
  const factory _AppOverlayState(
      {final ToastMessage? toastMessage,
      final PushNotificationWrapper? notificationWrapper,
      final bool isLoading}) = _$AppOverlayStateImpl;
  const _AppOverlayState._() : super._();

  @override
  ToastMessage? get toastMessage;
  @override
  PushNotificationWrapper? get notificationWrapper;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$AppOverlayStateImplCopyWith<_$AppOverlayStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ToastMessage {
  String get message => throw _privateConstructorUsedError;
  ToastType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToastMessageCopyWith<ToastMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToastMessageCopyWith<$Res> {
  factory $ToastMessageCopyWith(
          ToastMessage value, $Res Function(ToastMessage) then) =
      _$ToastMessageCopyWithImpl<$Res, ToastMessage>;
  @useResult
  $Res call({String message, ToastType type});
}

/// @nodoc
class _$ToastMessageCopyWithImpl<$Res, $Val extends ToastMessage>
    implements $ToastMessageCopyWith<$Res> {
  _$ToastMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ToastType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToastMessageImplCopyWith<$Res>
    implements $ToastMessageCopyWith<$Res> {
  factory _$$ToastMessageImplCopyWith(
          _$ToastMessageImpl value, $Res Function(_$ToastMessageImpl) then) =
      __$$ToastMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, ToastType type});
}

/// @nodoc
class __$$ToastMessageImplCopyWithImpl<$Res>
    extends _$ToastMessageCopyWithImpl<$Res, _$ToastMessageImpl>
    implements _$$ToastMessageImplCopyWith<$Res> {
  __$$ToastMessageImplCopyWithImpl(
      _$ToastMessageImpl _value, $Res Function(_$ToastMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? type = null,
  }) {
    return _then(_$ToastMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ToastType,
    ));
  }
}

/// @nodoc

class _$ToastMessageImpl implements _ToastMessage {
  const _$ToastMessageImpl({required this.message, required this.type});

  @override
  final String message;
  @override
  final ToastType type;

  @override
  String toString() {
    return 'ToastMessage(message: $message, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToastMessageImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToastMessageImplCopyWith<_$ToastMessageImpl> get copyWith =>
      __$$ToastMessageImplCopyWithImpl<_$ToastMessageImpl>(this, _$identity);
}

abstract class _ToastMessage implements ToastMessage {
  const factory _ToastMessage(
      {required final String message,
      required final ToastType type}) = _$ToastMessageImpl;

  @override
  String get message;
  @override
  ToastType get type;
  @override
  @JsonKey(ignore: true)
  _$$ToastMessageImplCopyWith<_$ToastMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
