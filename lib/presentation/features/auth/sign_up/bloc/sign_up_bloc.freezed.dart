// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserNameChanged {
  String get username => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserNameChangedCopyWith<UserNameChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNameChangedCopyWith<$Res> {
  factory $UserNameChangedCopyWith(UserNameChanged value, $Res Function(UserNameChanged) then) =
      _$UserNameChangedCopyWithImpl<$Res, UserNameChanged>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class _$UserNameChangedCopyWithImpl<$Res, $Val extends UserNameChanged> implements $UserNameChangedCopyWith<$Res> {
  _$UserNameChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserNameChangedImplCopyWith<$Res> implements $UserNameChangedCopyWith<$Res> {
  factory _$$UserNameChangedImplCopyWith(_$UserNameChangedImpl value, $Res Function(_$UserNameChangedImpl) then) =
      __$$UserNameChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$UserNameChangedImplCopyWithImpl<$Res> extends _$UserNameChangedCopyWithImpl<$Res, _$UserNameChangedImpl>
    implements _$$UserNameChangedImplCopyWith<$Res> {
  __$$UserNameChangedImplCopyWithImpl(_$UserNameChangedImpl _value, $Res Function(_$UserNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$UserNameChangedImpl(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserNameChangedImpl with DiagnosticableTreeMixin implements _UserNameChanged {
  const _$UserNameChangedImpl(this.username);

  @override
  final String username;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserNameChanged(username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserNameChanged'))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNameChangedImpl &&
            (identical(other.username, username) || other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNameChangedImplCopyWith<_$UserNameChangedImpl> get copyWith =>
      __$$UserNameChangedImplCopyWithImpl<_$UserNameChangedImpl>(this, _$identity);
}

abstract class _UserNameChanged implements UserNameChanged {
  const factory _UserNameChanged(final String username) = _$UserNameChangedImpl;

  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$UserNameChangedImplCopyWith<_$UserNameChangedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmailChanged {
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res, EmailChanged>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res, $Val extends EmailChanged> implements $EmailChangedCopyWith<$Res> {
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
abstract class _$$EmailChangedImplCopyWith<$Res> implements $EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(_$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res> extends _$EmailChangedCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(_$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
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

class _$EmailChangedImpl with DiagnosticableTreeMixin implements _EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailChanged(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmailChanged'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
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
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PasswordChanged {
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res, PasswordChanged>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res, $Val extends PasswordChanged> implements $PasswordChangedCopyWith<$Res> {
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
abstract class _$$PasswordChangedImplCopyWith<$Res> implements $PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value, $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res> extends _$PasswordChangedCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(_$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl with DiagnosticableTreeMixin implements _PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordChanged(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PasswordChanged'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) || other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(this, _$identity);
}

abstract class _PasswordChanged implements PasswordChanged {
  const factory _PasswordChanged(final String password) = _$PasswordChangedImpl;

  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConfirmPasswordChanged {
  String get confirmPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmPasswordChangedCopyWith<$Res> {
  factory $ConfirmPasswordChangedCopyWith(ConfirmPasswordChanged value, $Res Function(ConfirmPasswordChanged) then) =
      _$ConfirmPasswordChangedCopyWithImpl<$Res, ConfirmPasswordChanged>;
  @useResult
  $Res call({String confirmPassword});
}

/// @nodoc
class _$ConfirmPasswordChangedCopyWithImpl<$Res, $Val extends ConfirmPasswordChanged>
    implements $ConfirmPasswordChangedCopyWith<$Res> {
  _$ConfirmPasswordChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
  }) {
    return _then(_value.copyWith(
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmPasswordChangedImplCopyWith<$Res> implements $ConfirmPasswordChangedCopyWith<$Res> {
  factory _$$ConfirmPasswordChangedImplCopyWith(
          _$ConfirmPasswordChangedImpl value, $Res Function(_$ConfirmPasswordChangedImpl) then) =
      __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String confirmPassword});
}

/// @nodoc
class __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>
    extends _$ConfirmPasswordChangedCopyWithImpl<$Res, _$ConfirmPasswordChangedImpl>
    implements _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  __$$ConfirmPasswordChangedImplCopyWithImpl(
      _$ConfirmPasswordChangedImpl _value, $Res Function(_$ConfirmPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
  }) {
    return _then(_$ConfirmPasswordChangedImpl(
      null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChangedImpl with DiagnosticableTreeMixin implements _ConfirmPasswordChanged {
  const _$ConfirmPasswordChangedImpl(this.confirmPassword);

  @override
  final String confirmPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConfirmPasswordChanged(confirmPassword: $confirmPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConfirmPasswordChanged'))
      ..add(DiagnosticsProperty('confirmPassword', confirmPassword));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordChangedImpl &&
            (identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl> get copyWith =>
      __$$ConfirmPasswordChangedImplCopyWithImpl<_$ConfirmPasswordChangedImpl>(this, _$identity);
}

abstract class _ConfirmPasswordChanged implements ConfirmPasswordChanged {
  const factory _ConfirmPasswordChanged(final String confirmPassword) = _$ConfirmPasswordChangedImpl;

  @override
  String get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IsPasswordVisibleChanged {
  bool get isPasswordVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IsPasswordVisibleChangedCopyWith<IsPasswordVisibleChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsPasswordVisibleChangedCopyWith<$Res> {
  factory $IsPasswordVisibleChangedCopyWith(
          IsPasswordVisibleChanged value, $Res Function(IsPasswordVisibleChanged) then) =
      _$IsPasswordVisibleChangedCopyWithImpl<$Res, IsPasswordVisibleChanged>;
  @useResult
  $Res call({bool isPasswordVisible});
}

/// @nodoc
class _$IsPasswordVisibleChangedCopyWithImpl<$Res, $Val extends IsPasswordVisibleChanged>
    implements $IsPasswordVisibleChangedCopyWith<$Res> {
  _$IsPasswordVisibleChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPasswordVisible = null,
  }) {
    return _then(_value.copyWith(
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IsPasswordVisibleChangedImplCopyWith<$Res> implements $IsPasswordVisibleChangedCopyWith<$Res> {
  factory _$$IsPasswordVisibleChangedImplCopyWith(
          _$IsPasswordVisibleChangedImpl value, $Res Function(_$IsPasswordVisibleChangedImpl) then) =
      __$$IsPasswordVisibleChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPasswordVisible});
}

/// @nodoc
class __$$IsPasswordVisibleChangedImplCopyWithImpl<$Res>
    extends _$IsPasswordVisibleChangedCopyWithImpl<$Res, _$IsPasswordVisibleChangedImpl>
    implements _$$IsPasswordVisibleChangedImplCopyWith<$Res> {
  __$$IsPasswordVisibleChangedImplCopyWithImpl(
      _$IsPasswordVisibleChangedImpl _value, $Res Function(_$IsPasswordVisibleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPasswordVisible = null,
  }) {
    return _then(_$IsPasswordVisibleChangedImpl(
      null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsPasswordVisibleChangedImpl with DiagnosticableTreeMixin implements _IsPasswordVisibleChanged {
  const _$IsPasswordVisibleChangedImpl(this.isPasswordVisible);

  @override
  final bool isPasswordVisible;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IsPasswordVisibleChanged(isPasswordVisible: $isPasswordVisible)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IsPasswordVisibleChanged'))
      ..add(DiagnosticsProperty('isPasswordVisible', isPasswordVisible));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsPasswordVisibleChangedImpl &&
            (identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPasswordVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsPasswordVisibleChangedImplCopyWith<_$IsPasswordVisibleChangedImpl> get copyWith =>
      __$$IsPasswordVisibleChangedImplCopyWithImpl<_$IsPasswordVisibleChangedImpl>(this, _$identity);
}

abstract class _IsPasswordVisibleChanged implements IsPasswordVisibleChanged {
  const factory _IsPasswordVisibleChanged(final bool isPasswordVisible) = _$IsPasswordVisibleChangedImpl;

  @override
  bool get isPasswordVisible;
  @override
  @JsonKey(ignore: true)
  _$$IsPasswordVisibleChangedImplCopyWith<_$IsPasswordVisibleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IsConfirmPasswordVisibleChanged {
  bool get isConfirmPasswordVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IsConfirmPasswordVisibleChangedCopyWith<IsConfirmPasswordVisibleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsConfirmPasswordVisibleChangedCopyWith<$Res> {
  factory $IsConfirmPasswordVisibleChangedCopyWith(
          IsConfirmPasswordVisibleChanged value, $Res Function(IsConfirmPasswordVisibleChanged) then) =
      _$IsConfirmPasswordVisibleChangedCopyWithImpl<$Res, IsConfirmPasswordVisibleChanged>;
  @useResult
  $Res call({bool isConfirmPasswordVisible});
}

/// @nodoc
class _$IsConfirmPasswordVisibleChangedCopyWithImpl<$Res, $Val extends IsConfirmPasswordVisibleChanged>
    implements $IsConfirmPasswordVisibleChangedCopyWith<$Res> {
  _$IsConfirmPasswordVisibleChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConfirmPasswordVisible = null,
  }) {
    return _then(_value.copyWith(
      isConfirmPasswordVisible: null == isConfirmPasswordVisible
          ? _value.isConfirmPasswordVisible
          : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IsConfirmPasswordVisibleChangedImplCopyWith<$Res>
    implements $IsConfirmPasswordVisibleChangedCopyWith<$Res> {
  factory _$$IsConfirmPasswordVisibleChangedImplCopyWith(
          _$IsConfirmPasswordVisibleChangedImpl value, $Res Function(_$IsConfirmPasswordVisibleChangedImpl) then) =
      __$$IsConfirmPasswordVisibleChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isConfirmPasswordVisible});
}

/// @nodoc
class __$$IsConfirmPasswordVisibleChangedImplCopyWithImpl<$Res>
    extends _$IsConfirmPasswordVisibleChangedCopyWithImpl<$Res, _$IsConfirmPasswordVisibleChangedImpl>
    implements _$$IsConfirmPasswordVisibleChangedImplCopyWith<$Res> {
  __$$IsConfirmPasswordVisibleChangedImplCopyWithImpl(
      _$IsConfirmPasswordVisibleChangedImpl _value, $Res Function(_$IsConfirmPasswordVisibleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConfirmPasswordVisible = null,
  }) {
    return _then(_$IsConfirmPasswordVisibleChangedImpl(
      null == isConfirmPasswordVisible
          ? _value.isConfirmPasswordVisible
          : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsConfirmPasswordVisibleChangedImpl with DiagnosticableTreeMixin implements _IsConfirmPasswordVisibleChanged {
  const _$IsConfirmPasswordVisibleChangedImpl(this.isConfirmPasswordVisible);

  @override
  final bool isConfirmPasswordVisible;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IsConfirmPasswordVisibleChanged(isConfirmPasswordVisible: $isConfirmPasswordVisible)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IsConfirmPasswordVisibleChanged'))
      ..add(DiagnosticsProperty('isConfirmPasswordVisible', isConfirmPasswordVisible));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsConfirmPasswordVisibleChangedImpl &&
            (identical(other.isConfirmPasswordVisible, isConfirmPasswordVisible) ||
                other.isConfirmPasswordVisible == isConfirmPasswordVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConfirmPasswordVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsConfirmPasswordVisibleChangedImplCopyWith<_$IsConfirmPasswordVisibleChangedImpl> get copyWith =>
      __$$IsConfirmPasswordVisibleChangedImplCopyWithImpl<_$IsConfirmPasswordVisibleChangedImpl>(this, _$identity);
}

abstract class _IsConfirmPasswordVisibleChanged implements IsConfirmPasswordVisibleChanged {
  const factory _IsConfirmPasswordVisibleChanged(final bool isConfirmPasswordVisible) =
      _$IsConfirmPasswordVisibleChangedImpl;

  @override
  bool get isConfirmPasswordVisible;
  @override
  @JsonKey(ignore: true)
  _$$IsConfirmPasswordVisibleChangedImplCopyWith<_$IsConfirmPasswordVisibleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpSubmitted {}

/// @nodoc
abstract class $SignUpSubmittedCopyWith<$Res> {
  factory $SignUpSubmittedCopyWith(SignUpSubmitted value, $Res Function(SignUpSubmitted) then) =
      _$SignUpSubmittedCopyWithImpl<$Res, SignUpSubmitted>;
}

/// @nodoc
class _$SignUpSubmittedCopyWithImpl<$Res, $Val extends SignUpSubmitted> implements $SignUpSubmittedCopyWith<$Res> {
  _$SignUpSubmittedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpSubmittedImplCopyWith<$Res> {
  factory _$$SignUpSubmittedImplCopyWith(_$SignUpSubmittedImpl value, $Res Function(_$SignUpSubmittedImpl) then) =
      __$$SignUpSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpSubmittedImplCopyWithImpl<$Res> extends _$SignUpSubmittedCopyWithImpl<$Res, _$SignUpSubmittedImpl>
    implements _$$SignUpSubmittedImplCopyWith<$Res> {
  __$$SignUpSubmittedImplCopyWithImpl(_$SignUpSubmittedImpl _value, $Res Function(_$SignUpSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpSubmittedImpl with DiagnosticableTreeMixin implements _SignUpSubmitted {
  const _$SignUpSubmittedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpSubmitted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignUpSubmitted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SignUpSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SignUpSubmitted implements SignUpSubmitted {
  const factory _SignUpSubmitted() = _$SignUpSubmittedImpl;
}

/// @nodoc
mixin _$SignUpState {
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  bool get isPasswordVisible => throw _privateConstructorUsedError;
  bool get isConfirmPasswordVisible => throw _privateConstructorUsedError;
  int get submitCount => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSignUpSuccess => throw _privateConstructorUsedError;
  AuthExceptionKind? get failureReason => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {String username,
      String email,
      String password,
      String confirmPassword,
      bool isPasswordVisible,
      bool isConfirmPasswordVisible,
      int submitCount,
      bool isSubmitting,
      bool isSignUpSuccess,
      AuthExceptionKind? failureReason});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? isPasswordVisible = null,
    Object? isConfirmPasswordVisible = null,
    Object? submitCount = null,
    Object? isSubmitting = null,
    Object? isSignUpSuccess = null,
    Object? failureReason = freezed,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordVisible: null == isConfirmPasswordVisible
          ? _value.isConfirmPasswordVisible
          : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      submitCount: null == submitCount
          ? _value.submitCount
          : submitCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignUpSuccess: null == isSignUpSuccess
          ? _value.isSignUpSuccess
          : isSignUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as AuthExceptionKind?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(_$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String email,
      String password,
      String confirmPassword,
      bool isPasswordVisible,
      bool isConfirmPasswordVisible,
      int submitCount,
      bool isSubmitting,
      bool isSignUpSuccess,
      AuthExceptionKind? failureReason});
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(_$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? isPasswordVisible = null,
    Object? isConfirmPasswordVisible = null,
    Object? submitCount = null,
    Object? isSubmitting = null,
    Object? isSignUpSuccess = null,
    Object? failureReason = freezed,
  }) {
    return _then(_$SignUpStateImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordVisible: null == isConfirmPasswordVisible
          ? _value.isConfirmPasswordVisible
          : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      submitCount: null == submitCount
          ? _value.submitCount
          : submitCount // ignore: cast_nullable_to_non_nullable
              as int,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignUpSuccess: null == isSignUpSuccess
          ? _value.isSignUpSuccess
          : isSignUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as AuthExceptionKind?,
    ));
  }
}

/// @nodoc

class _$SignUpStateImpl extends _SignUpState with DiagnosticableTreeMixin {
  const _$SignUpStateImpl(
      {this.username = '',
      this.email = '',
      this.password = '',
      this.confirmPassword = '',
      this.isPasswordVisible = false,
      this.isConfirmPasswordVisible = false,
      this.submitCount = 0,
      this.isSubmitting = false,
      this.isSignUpSuccess = false,
      this.failureReason})
      : super._();

  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  @JsonKey()
  final bool isPasswordVisible;
  @override
  @JsonKey()
  final bool isConfirmPasswordVisible;
  @override
  @JsonKey()
  final int submitCount;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool isSignUpSuccess;
  @override
  final AuthExceptionKind? failureReason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState(username: $username, email: $email, password: $password, confirmPassword: $confirmPassword, isPasswordVisible: $isPasswordVisible, isConfirmPasswordVisible: $isConfirmPasswordVisible, submitCount: $submitCount, isSubmitting: $isSubmitting, isSignUpSuccess: $isSignUpSuccess, failureReason: $failureReason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('confirmPassword', confirmPassword))
      ..add(DiagnosticsProperty('isPasswordVisible', isPasswordVisible))
      ..add(DiagnosticsProperty('isConfirmPasswordVisible', isConfirmPasswordVisible))
      ..add(DiagnosticsProperty('submitCount', submitCount))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('isSignUpSuccess', isSignUpSuccess))
      ..add(DiagnosticsProperty('failureReason', failureReason));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword) &&
            (identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible) &&
            (identical(other.isConfirmPasswordVisible, isConfirmPasswordVisible) ||
                other.isConfirmPasswordVisible == isConfirmPasswordVisible) &&
            (identical(other.submitCount, submitCount) || other.submitCount == submitCount) &&
            (identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting) &&
            (identical(other.isSignUpSuccess, isSignUpSuccess) || other.isSignUpSuccess == isSignUpSuccess) &&
            (identical(other.failureReason, failureReason) || other.failureReason == failureReason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, email, password, confirmPassword, isPasswordVisible,
      isConfirmPasswordVisible, submitCount, isSubmitting, isSignUpSuccess, failureReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState extends SignUpState {
  const factory _SignUpState(
      {final String username,
      final String email,
      final String password,
      final String confirmPassword,
      final bool isPasswordVisible,
      final bool isConfirmPasswordVisible,
      final int submitCount,
      final bool isSubmitting,
      final bool isSignUpSuccess,
      final AuthExceptionKind? failureReason}) = _$SignUpStateImpl;
  const _SignUpState._() : super._();

  @override
  String get username;
  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  bool get isPasswordVisible;
  @override
  bool get isConfirmPasswordVisible;
  @override
  int get submitCount;
  @override
  bool get isSubmitting;
  @override
  bool get isSignUpSuccess;
  @override
  AuthExceptionKind? get failureReason;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith => throw _privateConstructorUsedError;
}
