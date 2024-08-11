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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$EmailChangedImplCopyWith<$Res>
    implements $EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$EmailChangedCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'EmailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);
}

abstract class _EmailChanged implements EmailChanged {
  const factory _EmailChanged(final String email) = _$EmailChangedImpl;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
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
abstract class _$$RequestSubmittedImplCopyWith<$Res> {
  factory _$$RequestSubmittedImplCopyWith(_$RequestSubmittedImpl value,
          $Res Function(_$RequestSubmittedImpl) then) =
      __$$RequestSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestSubmittedImplCopyWithImpl<$Res>
    extends _$RequestSubmittedCopyWithImpl<$Res, _$RequestSubmittedImpl>
    implements _$$RequestSubmittedImplCopyWith<$Res> {
  __$$RequestSubmittedImplCopyWithImpl(_$RequestSubmittedImpl _value,
      $Res Function(_$RequestSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestSubmittedImpl implements _RequestSubmitted {
  const _$RequestSubmittedImpl();

  @override
  String toString() {
    return 'RequestSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _RequestSubmitted implements RequestSubmitted {
  const factory _RequestSubmitted() = _$RequestSubmittedImpl;
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
abstract class _$$ForgotPassStateImplCopyWith<$Res>
    implements $ForgotPassStateCopyWith<$Res> {
  factory _$$ForgotPassStateImplCopyWith(_$ForgotPassStateImpl value,
          $Res Function(_$ForgotPassStateImpl) then) =
      __$$ForgotPassStateImplCopyWithImpl<$Res>;
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
class __$$ForgotPassStateImplCopyWithImpl<$Res>
    extends _$ForgotPassStateCopyWithImpl<$Res, _$ForgotPassStateImpl>
    implements _$$ForgotPassStateImplCopyWith<$Res> {
  __$$ForgotPassStateImplCopyWithImpl(
      _$ForgotPassStateImpl _value, $Res Function(_$ForgotPassStateImpl) _then)
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
    return _then(_$ForgotPassStateImpl(
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

class _$ForgotPassStateImpl extends _ForgotPassState {
  const _$ForgotPassStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPassStateImpl &&
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
  _$$ForgotPassStateImplCopyWith<_$ForgotPassStateImpl> get copyWith =>
      __$$ForgotPassStateImplCopyWithImpl<_$ForgotPassStateImpl>(
          this, _$identity);
}

abstract class _ForgotPassState extends ForgotPassState {
  const factory _ForgotPassState(
      {final String email,
      final int submitCount,
      final bool isSubmitting,
      final bool requestSuccess,
      final ForgotPassFailureReason? failureReason}) = _$ForgotPassStateImpl;
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
  _$$ForgotPassStateImplCopyWith<_$ForgotPassStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
