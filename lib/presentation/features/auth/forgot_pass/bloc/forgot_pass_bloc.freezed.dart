// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_pass_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmailChanged {
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res, EmailChanged>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res, $Val extends EmailChanged>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res>
    implements $EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$EmailChangedCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailChanged(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'EmailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);
}

abstract class _EmailChanged implements EmailChanged {
  const factory _EmailChanged(final String email) = _$_EmailChanged;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RequestSubmitted {}

/// @nodoc
abstract class $RequestSubmittedCopyWith<$Res> {
  factory $RequestSubmittedCopyWith(
          RequestSubmitted value, $Res Function(RequestSubmitted) then) =
      _$RequestSubmittedCopyWithImpl<$Res, RequestSubmitted>;
}

/// @nodoc
class _$RequestSubmittedCopyWithImpl<$Res, $Val extends RequestSubmitted>
    implements $RequestSubmittedCopyWith<$Res> {
  _$RequestSubmittedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RequestSubmittedCopyWith<$Res> {
  factory _$$_RequestSubmittedCopyWith(
          _$_RequestSubmitted value, $Res Function(_$_RequestSubmitted) then) =
      __$$_RequestSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestSubmittedCopyWithImpl<$Res>
    extends _$RequestSubmittedCopyWithImpl<$Res, _$_RequestSubmitted>
    implements _$$_RequestSubmittedCopyWith<$Res> {
  __$$_RequestSubmittedCopyWithImpl(
      _$_RequestSubmitted _value, $Res Function(_$_RequestSubmitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestSubmitted implements _RequestSubmitted {
  const _$_RequestSubmitted();

  @override
  String toString() {
    return 'RequestSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _RequestSubmitted implements RequestSubmitted {
  const factory _RequestSubmitted() = _$_RequestSubmitted;
}

/// @nodoc
mixin _$ForgotPassState {
  String get email => throw _privateConstructorUsedError;
  int get submitCount => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get requestSuccess => throw _privateConstructorUsedError;
  ForgotPassFailureReason? get failureReason =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPassStateCopyWith<ForgotPassState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPassStateCopyWith<$Res> {
  factory $ForgotPassStateCopyWith(
          ForgotPassState value, $Res Function(ForgotPassState) then) =
      _$ForgotPassStateCopyWithImpl<$Res, ForgotPassState>;
  @useResult
  $Res call(
      {String email,
      int submitCount,
      bool isSubmitting,
      bool requestSuccess,
      ForgotPassFailureReason? failureReason});
}

/// @nodoc
class _$ForgotPassStateCopyWithImpl<$Res, $Val extends ForgotPassState>
    implements $ForgotPassStateCopyWith<$Res> {
  _$ForgotPassStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? submitCount = null,
    Object? isSubmitting = null,
    Object? requestSuccess = null,
    Object? failureReason = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      submitCount: null == submitCount
          ? _value.submitCount
          : submitCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      requestSuccess: null == requestSuccess
          ? _value.requestSuccess
          : requestSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as ForgotPassFailureReason?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForgotPassStateCopyWith<$Res>
    implements $ForgotPassStateCopyWith<$Res> {
  factory _$$_ForgotPassStateCopyWith(
          _$_ForgotPassState value, $Res Function(_$_ForgotPassState) then) =
      __$$_ForgotPassStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      int submitCount,
      bool isSubmitting,
      bool requestSuccess,
      ForgotPassFailureReason? failureReason});
}

/// @nodoc
class __$$_ForgotPassStateCopyWithImpl<$Res>
    extends _$ForgotPassStateCopyWithImpl<$Res, _$_ForgotPassState>
    implements _$$_ForgotPassStateCopyWith<$Res> {
  __$$_ForgotPassStateCopyWithImpl(
      _$_ForgotPassState _value, $Res Function(_$_ForgotPassState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? submitCount = null,
    Object? isSubmitting = null,
    Object? requestSuccess = null,
    Object? failureReason = freezed,
  }) {
    return _then(_$_ForgotPassState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      submitCount: null == submitCount
          ? _value.submitCount
          : submitCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      requestSuccess: null == requestSuccess
          ? _value.requestSuccess
          : requestSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as ForgotPassFailureReason?,
    ));
  }
}

/// @nodoc

class _$_ForgotPassState extends _ForgotPassState {
  const _$_ForgotPassState(
      {this.email = '',
      this.submitCount = 0,
      this.isSubmitting = false,
      this.requestSuccess = false,
      this.failureReason})
      : super._();

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final int submitCount;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool requestSuccess;
  @override
  final ForgotPassFailureReason? failureReason;

  @override
  String toString() {
    return 'ForgotPassState(email: $email, submitCount: $submitCount, isSubmitting: $isSubmitting, requestSuccess: $requestSuccess, failureReason: $failureReason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPassState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.submitCount, submitCount) ||
                other.submitCount == submitCount) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.requestSuccess, requestSuccess) ||
                other.requestSuccess == requestSuccess) &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, submitCount, isSubmitting,
      requestSuccess, failureReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotPassStateCopyWith<_$_ForgotPassState> get copyWith =>
      __$$_ForgotPassStateCopyWithImpl<_$_ForgotPassState>(this, _$identity);
}

abstract class _ForgotPassState extends ForgotPassState {
  const factory _ForgotPassState(
      {final String email,
      final int submitCount,
      final bool isSubmitting,
      final bool requestSuccess,
      final ForgotPassFailureReason? failureReason}) = _$_ForgotPassState;
  const _ForgotPassState._() : super._();

  @override
  String get email;
  @override
  int get submitCount;
  @override
  bool get isSubmitting;
  @override
  bool get requestSuccess;
  @override
  ForgotPassFailureReason? get failureReason;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPassStateCopyWith<_$_ForgotPassState> get copyWith =>
      throw _privateConstructorUsedError;
}
