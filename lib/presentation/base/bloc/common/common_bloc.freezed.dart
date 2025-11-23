// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppExceptionWrapper appExceptionWrapper)
        exceptionEmitted,
    required TResult Function(bool isLoading) loadingVisibilityEmitted,
    required TResult Function() forceLogoutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppExceptionWrapper appExceptionWrapper)?
        exceptionEmitted,
    TResult? Function(bool isLoading)? loadingVisibilityEmitted,
    TResult? Function()? forceLogoutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppExceptionWrapper appExceptionWrapper)? exceptionEmitted,
    TResult Function(bool isLoading)? loadingVisibilityEmitted,
    TResult Function()? forceLogoutButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceptionEmitted value) exceptionEmitted,
    required TResult Function(_LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(_ForceLogoutButtonPressed value)
        forceLogoutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceptionEmitted value)? exceptionEmitted,
    TResult? Function(_LoadingVisibilityEmitted value)?
        loadingVisibilityEmitted,
    TResult? Function(_ForceLogoutButtonPressed value)?
        forceLogoutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceptionEmitted value)? exceptionEmitted,
    TResult Function(_LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(_ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonEventCopyWith<$Res> {
  factory $CommonEventCopyWith(
          CommonEvent value, $Res Function(CommonEvent) then) =
      _$CommonEventCopyWithImpl<$Res, CommonEvent>;
}

/// @nodoc
class _$CommonEventCopyWithImpl<$Res, $Val extends CommonEvent>
    implements $CommonEventCopyWith<$Res> {
  _$CommonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ExceptionEmittedImplCopyWith<$Res> {
  factory _$$ExceptionEmittedImplCopyWith(_$ExceptionEmittedImpl value,
          $Res Function(_$ExceptionEmittedImpl) then) =
      __$$ExceptionEmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppExceptionWrapper appExceptionWrapper});
}

/// @nodoc
class __$$ExceptionEmittedImplCopyWithImpl<$Res>
    extends _$CommonEventCopyWithImpl<$Res, _$ExceptionEmittedImpl>
    implements _$$ExceptionEmittedImplCopyWith<$Res> {
  __$$ExceptionEmittedImplCopyWithImpl(_$ExceptionEmittedImpl _value,
      $Res Function(_$ExceptionEmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appExceptionWrapper = null,
  }) {
    return _then(_$ExceptionEmittedImpl(
      appExceptionWrapper: null == appExceptionWrapper
          ? _value.appExceptionWrapper
          : appExceptionWrapper // ignore: cast_nullable_to_non_nullable
              as AppExceptionWrapper,
    ));
  }
}

/// @nodoc

class _$ExceptionEmittedImpl
    with DiagnosticableTreeMixin
    implements _ExceptionEmitted {
  const _$ExceptionEmittedImpl({required this.appExceptionWrapper});

  @override
  final AppExceptionWrapper appExceptionWrapper;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommonEvent.exceptionEmitted(appExceptionWrapper: $appExceptionWrapper)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommonEvent.exceptionEmitted'))
      ..add(DiagnosticsProperty('appExceptionWrapper', appExceptionWrapper));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceptionEmittedImpl &&
            (identical(other.appExceptionWrapper, appExceptionWrapper) ||
                other.appExceptionWrapper == appExceptionWrapper));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appExceptionWrapper);

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceptionEmittedImplCopyWith<_$ExceptionEmittedImpl> get copyWith =>
      __$$ExceptionEmittedImplCopyWithImpl<_$ExceptionEmittedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppExceptionWrapper appExceptionWrapper)
        exceptionEmitted,
    required TResult Function(bool isLoading) loadingVisibilityEmitted,
    required TResult Function() forceLogoutButtonPressed,
  }) {
    return exceptionEmitted(appExceptionWrapper);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppExceptionWrapper appExceptionWrapper)?
        exceptionEmitted,
    TResult? Function(bool isLoading)? loadingVisibilityEmitted,
    TResult? Function()? forceLogoutButtonPressed,
  }) {
    return exceptionEmitted?.call(appExceptionWrapper);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppExceptionWrapper appExceptionWrapper)? exceptionEmitted,
    TResult Function(bool isLoading)? loadingVisibilityEmitted,
    TResult Function()? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (exceptionEmitted != null) {
      return exceptionEmitted(appExceptionWrapper);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceptionEmitted value) exceptionEmitted,
    required TResult Function(_LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(_ForceLogoutButtonPressed value)
        forceLogoutButtonPressed,
  }) {
    return exceptionEmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceptionEmitted value)? exceptionEmitted,
    TResult? Function(_LoadingVisibilityEmitted value)?
        loadingVisibilityEmitted,
    TResult? Function(_ForceLogoutButtonPressed value)?
        forceLogoutButtonPressed,
  }) {
    return exceptionEmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceptionEmitted value)? exceptionEmitted,
    TResult Function(_LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(_ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (exceptionEmitted != null) {
      return exceptionEmitted(this);
    }
    return orElse();
  }
}

abstract class _ExceptionEmitted implements CommonEvent {
  const factory _ExceptionEmitted(
          {required final AppExceptionWrapper appExceptionWrapper}) =
      _$ExceptionEmittedImpl;

  AppExceptionWrapper get appExceptionWrapper;

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExceptionEmittedImplCopyWith<_$ExceptionEmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingVisibilityEmittedImplCopyWith<$Res> {
  factory _$$LoadingVisibilityEmittedImplCopyWith(
          _$LoadingVisibilityEmittedImpl value,
          $Res Function(_$LoadingVisibilityEmittedImpl) then) =
      __$$LoadingVisibilityEmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoadingVisibilityEmittedImplCopyWithImpl<$Res>
    extends _$CommonEventCopyWithImpl<$Res, _$LoadingVisibilityEmittedImpl>
    implements _$$LoadingVisibilityEmittedImplCopyWith<$Res> {
  __$$LoadingVisibilityEmittedImplCopyWithImpl(
      _$LoadingVisibilityEmittedImpl _value,
      $Res Function(_$LoadingVisibilityEmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$LoadingVisibilityEmittedImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingVisibilityEmittedImpl
    with DiagnosticableTreeMixin
    implements _LoadingVisibilityEmitted {
  const _$LoadingVisibilityEmittedImpl({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommonEvent.loadingVisibilityEmitted(isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommonEvent.loadingVisibilityEmitted'))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingVisibilityEmittedImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingVisibilityEmittedImplCopyWith<_$LoadingVisibilityEmittedImpl>
      get copyWith => __$$LoadingVisibilityEmittedImplCopyWithImpl<
          _$LoadingVisibilityEmittedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppExceptionWrapper appExceptionWrapper)
        exceptionEmitted,
    required TResult Function(bool isLoading) loadingVisibilityEmitted,
    required TResult Function() forceLogoutButtonPressed,
  }) {
    return loadingVisibilityEmitted(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppExceptionWrapper appExceptionWrapper)?
        exceptionEmitted,
    TResult? Function(bool isLoading)? loadingVisibilityEmitted,
    TResult? Function()? forceLogoutButtonPressed,
  }) {
    return loadingVisibilityEmitted?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppExceptionWrapper appExceptionWrapper)? exceptionEmitted,
    TResult Function(bool isLoading)? loadingVisibilityEmitted,
    TResult Function()? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (loadingVisibilityEmitted != null) {
      return loadingVisibilityEmitted(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceptionEmitted value) exceptionEmitted,
    required TResult Function(_LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(_ForceLogoutButtonPressed value)
        forceLogoutButtonPressed,
  }) {
    return loadingVisibilityEmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceptionEmitted value)? exceptionEmitted,
    TResult? Function(_LoadingVisibilityEmitted value)?
        loadingVisibilityEmitted,
    TResult? Function(_ForceLogoutButtonPressed value)?
        forceLogoutButtonPressed,
  }) {
    return loadingVisibilityEmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceptionEmitted value)? exceptionEmitted,
    TResult Function(_LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(_ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (loadingVisibilityEmitted != null) {
      return loadingVisibilityEmitted(this);
    }
    return orElse();
  }
}

abstract class _LoadingVisibilityEmitted implements CommonEvent {
  const factory _LoadingVisibilityEmitted({required final bool isLoading}) =
      _$LoadingVisibilityEmittedImpl;

  bool get isLoading;

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingVisibilityEmittedImplCopyWith<_$LoadingVisibilityEmittedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForceLogoutButtonPressedImplCopyWith<$Res> {
  factory _$$ForceLogoutButtonPressedImplCopyWith(
          _$ForceLogoutButtonPressedImpl value,
          $Res Function(_$ForceLogoutButtonPressedImpl) then) =
      __$$ForceLogoutButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForceLogoutButtonPressedImplCopyWithImpl<$Res>
    extends _$CommonEventCopyWithImpl<$Res, _$ForceLogoutButtonPressedImpl>
    implements _$$ForceLogoutButtonPressedImplCopyWith<$Res> {
  __$$ForceLogoutButtonPressedImplCopyWithImpl(
      _$ForceLogoutButtonPressedImpl _value,
      $Res Function(_$ForceLogoutButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ForceLogoutButtonPressedImpl
    with DiagnosticableTreeMixin
    implements _ForceLogoutButtonPressed {
  const _$ForceLogoutButtonPressedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommonEvent.forceLogoutButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CommonEvent.forceLogoutButtonPressed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForceLogoutButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppExceptionWrapper appExceptionWrapper)
        exceptionEmitted,
    required TResult Function(bool isLoading) loadingVisibilityEmitted,
    required TResult Function() forceLogoutButtonPressed,
  }) {
    return forceLogoutButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppExceptionWrapper appExceptionWrapper)?
        exceptionEmitted,
    TResult? Function(bool isLoading)? loadingVisibilityEmitted,
    TResult? Function()? forceLogoutButtonPressed,
  }) {
    return forceLogoutButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppExceptionWrapper appExceptionWrapper)? exceptionEmitted,
    TResult Function(bool isLoading)? loadingVisibilityEmitted,
    TResult Function()? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (forceLogoutButtonPressed != null) {
      return forceLogoutButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceptionEmitted value) exceptionEmitted,
    required TResult Function(_LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(_ForceLogoutButtonPressed value)
        forceLogoutButtonPressed,
  }) {
    return forceLogoutButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceptionEmitted value)? exceptionEmitted,
    TResult? Function(_LoadingVisibilityEmitted value)?
        loadingVisibilityEmitted,
    TResult? Function(_ForceLogoutButtonPressed value)?
        forceLogoutButtonPressed,
  }) {
    return forceLogoutButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceptionEmitted value)? exceptionEmitted,
    TResult Function(_LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(_ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (forceLogoutButtonPressed != null) {
      return forceLogoutButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _ForceLogoutButtonPressed implements CommonEvent {
  const factory _ForceLogoutButtonPressed() = _$ForceLogoutButtonPressedImpl;
}

/// @nodoc
mixin _$CommonState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get loadingCount => throw _privateConstructorUsedError;
  AppExceptionWrapper? get appExceptionWrapper =>
      throw _privateConstructorUsedError;

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommonStateCopyWith<CommonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateCopyWith<$Res> {
  factory $CommonStateCopyWith(
          CommonState value, $Res Function(CommonState) then) =
      _$CommonStateCopyWithImpl<$Res, CommonState>;
  @useResult
  $Res call(
      {bool isLoading,
      int loadingCount,
      AppExceptionWrapper? appExceptionWrapper});
}

/// @nodoc
class _$CommonStateCopyWithImpl<$Res, $Val extends CommonState>
    implements $CommonStateCopyWith<$Res> {
  _$CommonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? loadingCount = null,
    Object? appExceptionWrapper = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingCount: null == loadingCount
          ? _value.loadingCount
          : loadingCount // ignore: cast_nullable_to_non_nullable
              as int,
      appExceptionWrapper: freezed == appExceptionWrapper
          ? _value.appExceptionWrapper
          : appExceptionWrapper // ignore: cast_nullable_to_non_nullable
              as AppExceptionWrapper?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommonStateImplCopyWith<$Res>
    implements $CommonStateCopyWith<$Res> {
  factory _$$CommonStateImplCopyWith(
          _$CommonStateImpl value, $Res Function(_$CommonStateImpl) then) =
      __$$CommonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int loadingCount,
      AppExceptionWrapper? appExceptionWrapper});
}

/// @nodoc
class __$$CommonStateImplCopyWithImpl<$Res>
    extends _$CommonStateCopyWithImpl<$Res, _$CommonStateImpl>
    implements _$$CommonStateImplCopyWith<$Res> {
  __$$CommonStateImplCopyWithImpl(
      _$CommonStateImpl _value, $Res Function(_$CommonStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? loadingCount = null,
    Object? appExceptionWrapper = freezed,
  }) {
    return _then(_$CommonStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingCount: null == loadingCount
          ? _value.loadingCount
          : loadingCount // ignore: cast_nullable_to_non_nullable
              as int,
      appExceptionWrapper: freezed == appExceptionWrapper
          ? _value.appExceptionWrapper
          : appExceptionWrapper // ignore: cast_nullable_to_non_nullable
              as AppExceptionWrapper?,
    ));
  }
}

/// @nodoc

class _$CommonStateImpl with DiagnosticableTreeMixin implements _CommonState {
  const _$CommonStateImpl(
      {this.isLoading = false,
      this.loadingCount = 0,
      this.appExceptionWrapper});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int loadingCount;
  @override
  final AppExceptionWrapper? appExceptionWrapper;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommonState(isLoading: $isLoading, loadingCount: $loadingCount, appExceptionWrapper: $appExceptionWrapper)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommonState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('loadingCount', loadingCount))
      ..add(DiagnosticsProperty('appExceptionWrapper', appExceptionWrapper));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loadingCount, loadingCount) ||
                other.loadingCount == loadingCount) &&
            (identical(other.appExceptionWrapper, appExceptionWrapper) ||
                other.appExceptionWrapper == appExceptionWrapper));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, loadingCount, appExceptionWrapper);

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith =>
      __$$CommonStateImplCopyWithImpl<_$CommonStateImpl>(this, _$identity);
}

abstract class _CommonState implements CommonState {
  const factory _CommonState(
      {final bool isLoading,
      final int loadingCount,
      final AppExceptionWrapper? appExceptionWrapper}) = _$CommonStateImpl;

  @override
  bool get isLoading;
  @override
  int get loadingCount;
  @override
  AppExceptionWrapper? get appExceptionWrapper;

  /// Create a copy of CommonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
