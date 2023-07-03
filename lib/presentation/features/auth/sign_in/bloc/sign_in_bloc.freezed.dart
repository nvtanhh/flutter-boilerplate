// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

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
mixin _$PasswordChanged {
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res, PasswordChanged>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res, $Val extends PasswordChanged>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$PasswordChangedCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordChanged(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'PasswordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);
}

abstract class _PasswordChanged implements PasswordChanged {
  const factory _PasswordChanged(final String password) = _$_PasswordChanged;

  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInSubmitted {}

/// @nodoc
abstract class $SignInSubmittedCopyWith<$Res> {
  factory $SignInSubmittedCopyWith(
          SignInSubmitted value, $Res Function(SignInSubmitted) then) =
      _$SignInSubmittedCopyWithImpl<$Res, SignInSubmitted>;
}

/// @nodoc
class _$SignInSubmittedCopyWithImpl<$Res, $Val extends SignInSubmitted>
    implements $SignInSubmittedCopyWith<$Res> {
  _$SignInSubmittedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignInSubmittedCopyWith<$Res> {
  factory _$$_SignInSubmittedCopyWith(
          _$_SignInSubmitted value, $Res Function(_$_SignInSubmitted) then) =
      __$$_SignInSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInSubmittedCopyWithImpl<$Res>
    extends _$SignInSubmittedCopyWithImpl<$Res, _$_SignInSubmitted>
    implements _$$_SignInSubmittedCopyWith<$Res> {
  __$$_SignInSubmittedCopyWithImpl(
      _$_SignInSubmitted _value, $Res Function(_$_SignInSubmitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInSubmitted implements _SignInSubmitted {
  const _$_SignInSubmitted();

  @override
  String toString() {
    return 'SignInSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SignInSubmitted implements SignInSubmitted {
  const factory _SignInSubmitted() = _$_SignInSubmitted;
}

/// @nodoc
mixin _$SignInState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  int get submitCount => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSignInSuccess => throw _privateConstructorUsedError;
  SignInFailureReason? get failureReason => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {String email,
      String password,
      int submitCount,
      bool isSubmitting,
      bool isSignInSuccess,
      SignInFailureReason? failureReason});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? submitCount = null,
    Object? isSubmitting = null,
    Object? isSignInSuccess = null,
    Object? failureReason = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      submitCount: null == submitCount
          ? _value.submitCount
          : submitCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignInSuccess: null == isSignInSuccess
          ? _value.isSignInSuccess
          : isSignInSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as SignInFailureReason?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      int submitCount,
      bool isSubmitting,
      bool isSignInSuccess,
      SignInFailureReason? failureReason});
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_SignInState>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? submitCount = null,
    Object? isSubmitting = null,
    Object? isSignInSuccess = null,
    Object? failureReason = freezed,
  }) {
    return _then(_$_SignInState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      submitCount: null == submitCount
          ? _value.submitCount
          : submitCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignInSuccess: null == isSignInSuccess
          ? _value.isSignInSuccess
          : isSignInSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as SignInFailureReason?,
    ));
  }
}

/// @nodoc

class _$_SignInState extends _SignInState {
  const _$_SignInState(
      {this.email = '',
      this.password = '',
      this.submitCount = 0,
      this.isSubmitting = false,
      this.isSignInSuccess = false,
      this.failureReason})
      : super._();

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final int submitCount;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool isSignInSuccess;
  @override
  final SignInFailureReason? failureReason;

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, submitCount: $submitCount, isSubmitting: $isSubmitting, isSignInSuccess: $isSignInSuccess, failureReason: $failureReason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.submitCount, submitCount) ||
                other.submitCount == submitCount) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isSignInSuccess, isSignInSuccess) ||
                other.isSignInSuccess == isSignInSuccess) &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, submitCount,
      isSubmitting, isSignInSuccess, failureReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState extends SignInState {
  const factory _SignInState(
      {final String email,
      final String password,
      final int submitCount,
      final bool isSubmitting,
      final bool isSignInSuccess,
      final SignInFailureReason? failureReason}) = _$_SignInState;
  const _SignInState._() : super._();

  @override
  String get email;
  @override
  String get password;
  @override
  int get submitCount;
  @override
  bool get isSubmitting;
  @override
  bool get isSignInSuccess;
  @override
  SignInFailureReason? get failureReason;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
