// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHide) passwordHide,
    required TResult Function(
            String email, String password, bool isMail, BuildContext context)
        loginApi,
    required TResult Function(
            String phone_number, bool isMail, BuildContext context)
        forgot_password_request,
    required TResult Function(
            String phone_number, String otp, bool isMail, BuildContext context)
        verifyOtpApi,
    required TResult Function(String phone_number, String password, bool isMail,
            BuildContext context)
        password_reset,
    required TResult Function(BuildContext context) getProfileApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordHide)? passwordHide,
    TResult? Function(
            String email, String password, bool isMail, BuildContext context)?
        loginApi,
    TResult? Function(String phone_number, bool isMail, BuildContext context)?
        forgot_password_request,
    TResult? Function(
            String phone_number, String otp, bool isMail, BuildContext context)?
        verifyOtpApi,
    TResult? Function(String phone_number, String password, bool isMail,
            BuildContext context)?
        password_reset,
    TResult? Function(BuildContext context)? getProfileApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHide)? passwordHide,
    TResult Function(
            String email, String password, bool isMail, BuildContext context)?
        loginApi,
    TResult Function(String phone_number, bool isMail, BuildContext context)?
        forgot_password_request,
    TResult Function(
            String phone_number, String otp, bool isMail, BuildContext context)?
        verifyOtpApi,
    TResult Function(String phone_number, String password, bool isMail,
            BuildContext context)?
        password_reset,
    TResult Function(BuildContext context)? getProfileApi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordHide value) passwordHide,
    required TResult Function(LoginApi value) loginApi,
    required TResult Function(ForgotPasswordRequest value)
        forgot_password_request,
    required TResult Function(VerifyAccountOtpApi value) verifyOtpApi,
    required TResult Function(Password_reset value) password_reset,
    required TResult Function(GetProfileApi value) getProfileApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordHide value)? passwordHide,
    TResult? Function(LoginApi value)? loginApi,
    TResult? Function(ForgotPasswordRequest value)? forgot_password_request,
    TResult? Function(VerifyAccountOtpApi value)? verifyOtpApi,
    TResult? Function(Password_reset value)? password_reset,
    TResult? Function(GetProfileApi value)? getProfileApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordHide value)? passwordHide,
    TResult Function(LoginApi value)? loginApi,
    TResult Function(ForgotPasswordRequest value)? forgot_password_request,
    TResult Function(VerifyAccountOtpApi value)? verifyOtpApi,
    TResult Function(Password_reset value)? password_reset,
    TResult Function(GetProfileApi value)? getProfileApi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PasswordHideImplCopyWith<$Res> {
  factory _$$PasswordHideImplCopyWith(
          _$PasswordHideImpl value, $Res Function(_$PasswordHideImpl) then) =
      __$$PasswordHideImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isPasswordHide});
}

/// @nodoc
class __$$PasswordHideImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$PasswordHideImpl>
    implements _$$PasswordHideImplCopyWith<$Res> {
  __$$PasswordHideImplCopyWithImpl(
      _$PasswordHideImpl _value, $Res Function(_$PasswordHideImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPasswordHide = null,
  }) {
    return _then(_$PasswordHideImpl(
      isPasswordHide: null == isPasswordHide
          ? _value.isPasswordHide
          : isPasswordHide // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PasswordHideImpl implements PasswordHide {
  const _$PasswordHideImpl({required this.isPasswordHide});

  @override
  final bool isPasswordHide;

  @override
  String toString() {
    return 'LoginEvent.passwordHide(isPasswordHide: $isPasswordHide)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordHideImpl &&
            (identical(other.isPasswordHide, isPasswordHide) ||
                other.isPasswordHide == isPasswordHide));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPasswordHide);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordHideImplCopyWith<_$PasswordHideImpl> get copyWith =>
      __$$PasswordHideImplCopyWithImpl<_$PasswordHideImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHide) passwordHide,
    required TResult Function(
            String email, String password, bool isMail, BuildContext context)
        loginApi,
    required TResult Function(
            String phone_number, bool isMail, BuildContext context)
        forgot_password_request,
    required TResult Function(
            String phone_number, String otp, bool isMail, BuildContext context)
        verifyOtpApi,
    required TResult Function(String phone_number, String password, bool isMail,
            BuildContext context)
        password_reset,
    required TResult Function(BuildContext context) getProfileApi,
  }) {
    return passwordHide(isPasswordHide);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordHide)? passwordHide,
    TResult? Function(
            String email, String password, bool isMail, BuildContext context)?
        loginApi,
    TResult? Function(String phone_number, bool isMail, BuildContext context)?
        forgot_password_request,
    TResult? Function(
            String phone_number, String otp, bool isMail, BuildContext context)?
        verifyOtpApi,
    TResult? Function(String phone_number, String password, bool isMail,
            BuildContext context)?
        password_reset,
    TResult? Function(BuildContext context)? getProfileApi,
  }) {
    return passwordHide?.call(isPasswordHide);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHide)? passwordHide,
    TResult Function(
            String email, String password, bool isMail, BuildContext context)?
        loginApi,
    TResult Function(String phone_number, bool isMail, BuildContext context)?
        forgot_password_request,
    TResult Function(
            String phone_number, String otp, bool isMail, BuildContext context)?
        verifyOtpApi,
    TResult Function(String phone_number, String password, bool isMail,
            BuildContext context)?
        password_reset,
    TResult Function(BuildContext context)? getProfileApi,
    required TResult orElse(),
  }) {
    if (passwordHide != null) {
      return passwordHide(isPasswordHide);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordHide value) passwordHide,
    required TResult Function(LoginApi value) loginApi,
    required TResult Function(ForgotPasswordRequest value)
        forgot_password_request,
    required TResult Function(VerifyAccountOtpApi value) verifyOtpApi,
    required TResult Function(Password_reset value) password_reset,
    required TResult Function(GetProfileApi value) getProfileApi,
  }) {
    return passwordHide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordHide value)? passwordHide,
    TResult? Function(LoginApi value)? loginApi,
    TResult? Function(ForgotPasswordRequest value)? forgot_password_request,
    TResult? Function(VerifyAccountOtpApi value)? verifyOtpApi,
    TResult? Function(Password_reset value)? password_reset,
    TResult? Function(GetProfileApi value)? getProfileApi,
  }) {
    return passwordHide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordHide value)? passwordHide,
    TResult Function(LoginApi value)? loginApi,
    TResult Function(ForgotPasswordRequest value)? forgot_password_request,
    TResult Function(VerifyAccountOtpApi value)? verifyOtpApi,
    TResult Function(Password_reset value)? password_reset,
    TResult Function(GetProfileApi value)? getProfileApi,
    required TResult orElse(),
  }) {
    if (passwordHide != null) {
      return passwordHide(this);
    }
    return orElse();
  }
}

abstract class PasswordHide implements LoginEvent {
  const factory PasswordHide({required final bool isPasswordHide}) =
      _$PasswordHideImpl;

  bool get isPasswordHide;
  @JsonKey(ignore: true)
  _$$PasswordHideImplCopyWith<_$PasswordHideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginApiImplCopyWith<$Res> {
  factory _$$LoginApiImplCopyWith(
          _$LoginApiImpl value, $Res Function(_$LoginApiImpl) then) =
      __$$LoginApiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, bool isMail, BuildContext context});
}

/// @nodoc
class __$$LoginApiImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginApiImpl>
    implements _$$LoginApiImplCopyWith<$Res> {
  __$$LoginApiImplCopyWithImpl(
      _$LoginApiImpl _value, $Res Function(_$LoginApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isMail = null,
    Object? context = null,
  }) {
    return _then(_$LoginApiImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isMail: null == isMail
          ? _value.isMail
          : isMail // ignore: cast_nullable_to_non_nullable
              as bool,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$LoginApiImpl implements LoginApi {
  const _$LoginApiImpl(
      {required this.email,
      required this.password,
      required this.isMail,
      required this.context});

  @override
  final String email;
  @override
  final String password;
  @override
  final bool isMail;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LoginEvent.loginApi(email: $email, password: $password, isMail: $isMail, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginApiImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isMail, isMail) || other.isMail == isMail) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, isMail, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginApiImplCopyWith<_$LoginApiImpl> get copyWith =>
      __$$LoginApiImplCopyWithImpl<_$LoginApiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHide) passwordHide,
    required TResult Function(
            String email, String password, bool isMail, BuildContext context)
        loginApi,
    required TResult Function(
            String phone_number, bool isMail, BuildContext context)
        forgot_password_request,
    required TResult Function(
            String phone_number, String otp, bool isMail, BuildContext context)
        verifyOtpApi,
    required TResult Function(String phone_number, String password, bool isMail,
            BuildContext context)
        password_reset,
    required TResult Function(BuildContext context) getProfileApi,
  }) {
    return loginApi(email, password, isMail, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordHide)? passwordHide,
    TResult? Function(
            String email, String password, bool isMail, BuildContext context)?
        loginApi,
    TResult? Function(String phone_number, bool isMail, BuildContext context)?
        forgot_password_request,
    TResult? Function(
            String phone_number, String otp, bool isMail, BuildContext context)?
        verifyOtpApi,
    TResult? Function(String phone_number, String password, bool isMail,
            BuildContext context)?
        password_reset,
    TResult? Function(BuildContext context)? getProfileApi,
  }) {
    return loginApi?.call(email, password, isMail, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHide)? passwordHide,
    TResult Function(
            String email, String password, bool isMail, BuildContext context)?
        loginApi,
    TResult Function(String phone_number, bool isMail, BuildContext context)?
        forgot_password_request,
    TResult Function(
            String phone_number, String otp, bool isMail, BuildContext context)?
        verifyOtpApi,
    TResult Function(String phone_number, String password, bool isMail,
            BuildContext context)?
        password_reset,
    TResult Function(BuildContext context)? getProfileApi,
    required TResult orElse(),
  }) {
    if (loginApi != null) {
      return loginApi(email, password, isMail, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordHide value) passwordHide,
    required TResult Function(LoginApi value) loginApi,
    required TResult Function(ForgotPasswordRequest value)
        forgot_password_request,
    required TResult Function(VerifyAccountOtpApi value) verifyOtpApi,
    required TResult Function(Password_reset value) password_reset,
    required TResult Function(GetProfileApi value) getProfileApi,
  }) {
    return loginApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordHide value)? passwordHide,
    TResult? Function(LoginApi value)? loginApi,
    TResult? Function(ForgotPasswordRequest value)? forgot_password_request,
    TResult? Function(VerifyAccountOtpApi value)? verifyOtpApi,
    TResult? Function(Password_reset value)? password_reset,
    TResult? Function(GetProfileApi value)? getProfileApi,
  }) {
    return loginApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordHide value)? passwordHide,
    TResult Function(LoginApi value)? loginApi,
    TResult Function(ForgotPasswordRequest value)? forgot_password_request,
    TResult Function(VerifyAccountOtpApi value)? verifyOtpApi,
    TResult Function(Password_reset value)? password_reset,
    TResult Function(GetProfileApi value)? getProfileApi,
    required TResult orElse(),
  }) {
    if (loginApi != null) {
      return loginApi(this);
    }
    return orElse();
  }
}

abstract class LoginApi implements LoginEvent {
  const factory LoginApi(
      {required final String email,
      required final String password,
      required final bool isMail,
      required final BuildContext context}) = _$LoginApiImpl;

  String get email;
  String get password;
  bool get isMail;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$LoginApiImplCopyWith<_$LoginApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordRequestImplCopyWith<$Res> {
  factory _$$ForgotPasswordRequestImplCopyWith(
          _$ForgotPasswordRequestImpl value,
          $Res Function(_$ForgotPasswordRequestImpl) then) =
      __$$ForgotPasswordRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone_number, bool isMail, BuildContext context});
}

/// @nodoc
class __$$ForgotPasswordRequestImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ForgotPasswordRequestImpl>
    implements _$$ForgotPasswordRequestImplCopyWith<$Res> {
  __$$ForgotPasswordRequestImplCopyWithImpl(_$ForgotPasswordRequestImpl _value,
      $Res Function(_$ForgotPasswordRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone_number = null,
    Object? isMail = null,
    Object? context = null,
  }) {
    return _then(_$ForgotPasswordRequestImpl(
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      isMail: null == isMail
          ? _value.isMail
          : isMail // ignore: cast_nullable_to_non_nullable
              as bool,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordRequestImpl implements ForgotPasswordRequest {
  const _$ForgotPasswordRequestImpl(
      {required this.phone_number,
      required this.isMail,
      required this.context});

  @override
  final String phone_number;
  @override
  final bool isMail;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LoginEvent.forgot_password_request(phone_number: $phone_number, isMail: $isMail, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordRequestImpl &&
            (identical(other.phone_number, phone_number) ||
                other.phone_number == phone_number) &&
            (identical(other.isMail, isMail) || other.isMail == isMail) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone_number, isMail, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordRequestImplCopyWith<_$ForgotPasswordRequestImpl>
      get copyWith => __$$ForgotPasswordRequestImplCopyWithImpl<
          _$ForgotPasswordRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHide) passwordHide,
    required TResult Function(
            String email, String password, bool isMail, BuildContext context)
        loginApi,
    required TResult Function(
            String phone_number, bool isMail, BuildContext context)
        forgot_password_request,
    required TResult Function(
            String phone_number, String otp, bool isMail, BuildContext context)
        verifyOtpApi,
    required TResult Function(String phone_number, String password, bool isMail,
            BuildContext context)
        password_reset,
    required TResult Function(BuildContext context) getProfileApi,
  }) {
    return forgot_password_request(phone_number, isMail, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordHide)? passwordHide,
    TResult? Function(
            String email, String password, bool isMail, BuildContext context)?
        loginApi,
    TResult? Function(String phone_number, bool isMail, BuildContext context)?
        forgot_password_request,
    TResult? Function(
            String phone_number, String otp, bool isMail, BuildContext context)?
        verifyOtpApi,
    TResult? Function(String phone_number, String password, bool isMail,
            BuildContext context)?
        password_reset,
    TResult? Function(BuildContext context)? getProfileApi,
  }) {
    return forgot_password_request?.call(phone_number, isMail, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHide)? passwordHide,
    TResult Function(
            String email, String password, bool isMail, BuildContext context)?
        loginApi,
    TResult Function(String phone_number, bool isMail, BuildContext context)?
        forgot_password_request,
    TResult Function(
            String phone_number, String otp, bool isMail, BuildContext context)?
        verifyOtpApi,
    TResult Function(String phone_number, String password, bool isMail,
            BuildContext context)?
        password_reset,
    TResult Function(BuildContext context)? getProfileApi,
    required TResult orElse(),
  }) {
    if (forgot_password_request != null) {
      return forgot_password_request(phone_number, isMail, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordHide value) passwordHide,
    required TResult Function(LoginApi value) loginApi,
    required TResult Function(ForgotPasswordRequest value)
        forgot_password_request,
    required TResult Function(VerifyAccountOtpApi value) verifyOtpApi,
    required TResult Function(Password_reset value) password_reset,
    required TResult Function(GetProfileApi value) getProfileApi,
  }) {
    return forgot_password_request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordHide value)? passwordHide,
    TResult? Function(LoginApi value)? loginApi,
    TResult? Function(ForgotPasswordRequest value)? forgot_password_request,
    TResult? Function(VerifyAccountOtpApi value)? verifyOtpApi,
    TResult? Function(Password_reset value)? password_reset,
    TResult? Function(GetProfileApi value)? getProfileApi,
  }) {
    return forgot_password_request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordHide value)? passwordHide,
    TResult Function(LoginApi value)? loginApi,
    TResult Function(ForgotPasswordRequest value)? forgot_password_request,
    TResult Function(VerifyAccountOtpApi value)? verifyOtpApi,
    TResult Function(Password_reset value)? password_reset,
    TResult Function(GetProfileApi value)? getProfileApi,
    required TResult orElse(),
  }) {
    if (forgot_password_request != null) {
      return forgot_password_request(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordRequest implements LoginEvent {
  const factory ForgotPasswordRequest(
      {required final String phone_number,
      required final bool isMail,
      required final BuildContext context}) = _$ForgotPasswordRequestImpl;

  String get phone_number;
  bool get isMail;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$ForgotPasswordRequestImplCopyWith<_$ForgotPasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyAccountOtpApiImplCopyWith<$Res> {
  factory _$$VerifyAccountOtpApiImplCopyWith(_$VerifyAccountOtpApiImpl value,
          $Res Function(_$VerifyAccountOtpApiImpl) then) =
      __$$VerifyAccountOtpApiImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String phone_number, String otp, bool isMail, BuildContext context});
}

/// @nodoc
class __$$VerifyAccountOtpApiImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$VerifyAccountOtpApiImpl>
    implements _$$VerifyAccountOtpApiImplCopyWith<$Res> {
  __$$VerifyAccountOtpApiImplCopyWithImpl(_$VerifyAccountOtpApiImpl _value,
      $Res Function(_$VerifyAccountOtpApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone_number = null,
    Object? otp = null,
    Object? isMail = null,
    Object? context = null,
  }) {
    return _then(_$VerifyAccountOtpApiImpl(
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      isMail: null == isMail
          ? _value.isMail
          : isMail // ignore: cast_nullable_to_non_nullable
              as bool,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$VerifyAccountOtpApiImpl implements VerifyAccountOtpApi {
  const _$VerifyAccountOtpApiImpl(
      {required this.phone_number,
      required this.otp,
      required this.isMail,
      required this.context});

  @override
  final String phone_number;
  @override
  final String otp;
  @override
  final bool isMail;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LoginEvent.verifyOtpApi(phone_number: $phone_number, otp: $otp, isMail: $isMail, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyAccountOtpApiImpl &&
            (identical(other.phone_number, phone_number) ||
                other.phone_number == phone_number) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.isMail, isMail) || other.isMail == isMail) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phone_number, otp, isMail, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyAccountOtpApiImplCopyWith<_$VerifyAccountOtpApiImpl> get copyWith =>
      __$$VerifyAccountOtpApiImplCopyWithImpl<_$VerifyAccountOtpApiImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHide) passwordHide,
    required TResult Function(
            String email, String password, bool isMail, BuildContext context)
        loginApi,
    required TResult Function(
            String phone_number, bool isMail, BuildContext context)
        forgot_password_request,
    required TResult Function(
            String phone_number, String otp, bool isMail, BuildContext context)
        verifyOtpApi,
    required TResult Function(String phone_number, String password, bool isMail,
            BuildContext context)
        password_reset,
    required TResult Function(BuildContext context) getProfileApi,
  }) {
    return verifyOtpApi(phone_number, otp, isMail, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordHide)? passwordHide,
    TResult? Function(
            String email, String password, bool isMail, BuildContext context)?
        loginApi,
    TResult? Function(String phone_number, bool isMail, BuildContext context)?
        forgot_password_request,
    TResult? Function(
            String phone_number, String otp, bool isMail, BuildContext context)?
        verifyOtpApi,
    TResult? Function(String phone_number, String password, bool isMail,
            BuildContext context)?
        password_reset,
    TResult? Function(BuildContext context)? getProfileApi,
  }) {
    return verifyOtpApi?.call(phone_number, otp, isMail, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHide)? passwordHide,
    TResult Function(
            String email, String password, bool isMail, BuildContext context)?
        loginApi,
    TResult Function(String phone_number, bool isMail, BuildContext context)?
        forgot_password_request,
    TResult Function(
            String phone_number, String otp, bool isMail, BuildContext context)?
        verifyOtpApi,
    TResult Function(String phone_number, String password, bool isMail,
            BuildContext context)?
        password_reset,
    TResult Function(BuildContext context)? getProfileApi,
    required TResult orElse(),
  }) {
    if (verifyOtpApi != null) {
      return verifyOtpApi(phone_number, otp, isMail, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordHide value) passwordHide,
    required TResult Function(LoginApi value) loginApi,
    required TResult Function(ForgotPasswordRequest value)
        forgot_password_request,
    required TResult Function(VerifyAccountOtpApi value) verifyOtpApi,
    required TResult Function(Password_reset value) password_reset,
    required TResult Function(GetProfileApi value) getProfileApi,
  }) {
    return verifyOtpApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordHide value)? passwordHide,
    TResult? Function(LoginApi value)? loginApi,
    TResult? Function(ForgotPasswordRequest value)? forgot_password_request,
    TResult? Function(VerifyAccountOtpApi value)? verifyOtpApi,
    TResult? Function(Password_reset value)? password_reset,
    TResult? Function(GetProfileApi value)? getProfileApi,
  }) {
    return verifyOtpApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordHide value)? passwordHide,
    TResult Function(LoginApi value)? loginApi,
    TResult Function(ForgotPasswordRequest value)? forgot_password_request,
    TResult Function(VerifyAccountOtpApi value)? verifyOtpApi,
    TResult Function(Password_reset value)? password_reset,
    TResult Function(GetProfileApi value)? getProfileApi,
    required TResult orElse(),
  }) {
    if (verifyOtpApi != null) {
      return verifyOtpApi(this);
    }
    return orElse();
  }
}

abstract class VerifyAccountOtpApi implements LoginEvent {
  const factory VerifyAccountOtpApi(
      {required final String phone_number,
      required final String otp,
      required final bool isMail,
      required final BuildContext context}) = _$VerifyAccountOtpApiImpl;

  String get phone_number;
  String get otp;
  bool get isMail;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$VerifyAccountOtpApiImplCopyWith<_$VerifyAccountOtpApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Password_resetImplCopyWith<$Res> {
  factory _$$Password_resetImplCopyWith(_$Password_resetImpl value,
          $Res Function(_$Password_resetImpl) then) =
      __$$Password_resetImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String phone_number,
      String password,
      bool isMail,
      BuildContext context});
}

/// @nodoc
class __$$Password_resetImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$Password_resetImpl>
    implements _$$Password_resetImplCopyWith<$Res> {
  __$$Password_resetImplCopyWithImpl(
      _$Password_resetImpl _value, $Res Function(_$Password_resetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone_number = null,
    Object? password = null,
    Object? isMail = null,
    Object? context = null,
  }) {
    return _then(_$Password_resetImpl(
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isMail: null == isMail
          ? _value.isMail
          : isMail // ignore: cast_nullable_to_non_nullable
              as bool,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$Password_resetImpl implements Password_reset {
  const _$Password_resetImpl(
      {required this.phone_number,
      required this.password,
      required this.isMail,
      required this.context});

  @override
  final String phone_number;
  @override
  final String password;
  @override
  final bool isMail;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LoginEvent.password_reset(phone_number: $phone_number, password: $password, isMail: $isMail, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Password_resetImpl &&
            (identical(other.phone_number, phone_number) ||
                other.phone_number == phone_number) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isMail, isMail) || other.isMail == isMail) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phone_number, password, isMail, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Password_resetImplCopyWith<_$Password_resetImpl> get copyWith =>
      __$$Password_resetImplCopyWithImpl<_$Password_resetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHide) passwordHide,
    required TResult Function(
            String email, String password, bool isMail, BuildContext context)
        loginApi,
    required TResult Function(
            String phone_number, bool isMail, BuildContext context)
        forgot_password_request,
    required TResult Function(
            String phone_number, String otp, bool isMail, BuildContext context)
        verifyOtpApi,
    required TResult Function(String phone_number, String password, bool isMail,
            BuildContext context)
        password_reset,
    required TResult Function(BuildContext context) getProfileApi,
  }) {
    return password_reset(phone_number, password, isMail, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordHide)? passwordHide,
    TResult? Function(
            String email, String password, bool isMail, BuildContext context)?
        loginApi,
    TResult? Function(String phone_number, bool isMail, BuildContext context)?
        forgot_password_request,
    TResult? Function(
            String phone_number, String otp, bool isMail, BuildContext context)?
        verifyOtpApi,
    TResult? Function(String phone_number, String password, bool isMail,
            BuildContext context)?
        password_reset,
    TResult? Function(BuildContext context)? getProfileApi,
  }) {
    return password_reset?.call(phone_number, password, isMail, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHide)? passwordHide,
    TResult Function(
            String email, String password, bool isMail, BuildContext context)?
        loginApi,
    TResult Function(String phone_number, bool isMail, BuildContext context)?
        forgot_password_request,
    TResult Function(
            String phone_number, String otp, bool isMail, BuildContext context)?
        verifyOtpApi,
    TResult Function(String phone_number, String password, bool isMail,
            BuildContext context)?
        password_reset,
    TResult Function(BuildContext context)? getProfileApi,
    required TResult orElse(),
  }) {
    if (password_reset != null) {
      return password_reset(phone_number, password, isMail, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordHide value) passwordHide,
    required TResult Function(LoginApi value) loginApi,
    required TResult Function(ForgotPasswordRequest value)
        forgot_password_request,
    required TResult Function(VerifyAccountOtpApi value) verifyOtpApi,
    required TResult Function(Password_reset value) password_reset,
    required TResult Function(GetProfileApi value) getProfileApi,
  }) {
    return password_reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordHide value)? passwordHide,
    TResult? Function(LoginApi value)? loginApi,
    TResult? Function(ForgotPasswordRequest value)? forgot_password_request,
    TResult? Function(VerifyAccountOtpApi value)? verifyOtpApi,
    TResult? Function(Password_reset value)? password_reset,
    TResult? Function(GetProfileApi value)? getProfileApi,
  }) {
    return password_reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordHide value)? passwordHide,
    TResult Function(LoginApi value)? loginApi,
    TResult Function(ForgotPasswordRequest value)? forgot_password_request,
    TResult Function(VerifyAccountOtpApi value)? verifyOtpApi,
    TResult Function(Password_reset value)? password_reset,
    TResult Function(GetProfileApi value)? getProfileApi,
    required TResult orElse(),
  }) {
    if (password_reset != null) {
      return password_reset(this);
    }
    return orElse();
  }
}

abstract class Password_reset implements LoginEvent {
  const factory Password_reset(
      {required final String phone_number,
      required final String password,
      required final bool isMail,
      required final BuildContext context}) = _$Password_resetImpl;

  String get phone_number;
  String get password;
  bool get isMail;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$Password_resetImplCopyWith<_$Password_resetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProfileApiImplCopyWith<$Res> {
  factory _$$GetProfileApiImplCopyWith(
          _$GetProfileApiImpl value, $Res Function(_$GetProfileApiImpl) then) =
      __$$GetProfileApiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$GetProfileApiImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$GetProfileApiImpl>
    implements _$$GetProfileApiImplCopyWith<$Res> {
  __$$GetProfileApiImplCopyWithImpl(
      _$GetProfileApiImpl _value, $Res Function(_$GetProfileApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$GetProfileApiImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$GetProfileApiImpl implements GetProfileApi {
  const _$GetProfileApiImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LoginEvent.getProfileApi(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileApiImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileApiImplCopyWith<_$GetProfileApiImpl> get copyWith =>
      __$$GetProfileApiImplCopyWithImpl<_$GetProfileApiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHide) passwordHide,
    required TResult Function(
            String email, String password, bool isMail, BuildContext context)
        loginApi,
    required TResult Function(
            String phone_number, bool isMail, BuildContext context)
        forgot_password_request,
    required TResult Function(
            String phone_number, String otp, bool isMail, BuildContext context)
        verifyOtpApi,
    required TResult Function(String phone_number, String password, bool isMail,
            BuildContext context)
        password_reset,
    required TResult Function(BuildContext context) getProfileApi,
  }) {
    return getProfileApi(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordHide)? passwordHide,
    TResult? Function(
            String email, String password, bool isMail, BuildContext context)?
        loginApi,
    TResult? Function(String phone_number, bool isMail, BuildContext context)?
        forgot_password_request,
    TResult? Function(
            String phone_number, String otp, bool isMail, BuildContext context)?
        verifyOtpApi,
    TResult? Function(String phone_number, String password, bool isMail,
            BuildContext context)?
        password_reset,
    TResult? Function(BuildContext context)? getProfileApi,
  }) {
    return getProfileApi?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHide)? passwordHide,
    TResult Function(
            String email, String password, bool isMail, BuildContext context)?
        loginApi,
    TResult Function(String phone_number, bool isMail, BuildContext context)?
        forgot_password_request,
    TResult Function(
            String phone_number, String otp, bool isMail, BuildContext context)?
        verifyOtpApi,
    TResult Function(String phone_number, String password, bool isMail,
            BuildContext context)?
        password_reset,
    TResult Function(BuildContext context)? getProfileApi,
    required TResult orElse(),
  }) {
    if (getProfileApi != null) {
      return getProfileApi(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordHide value) passwordHide,
    required TResult Function(LoginApi value) loginApi,
    required TResult Function(ForgotPasswordRequest value)
        forgot_password_request,
    required TResult Function(VerifyAccountOtpApi value) verifyOtpApi,
    required TResult Function(Password_reset value) password_reset,
    required TResult Function(GetProfileApi value) getProfileApi,
  }) {
    return getProfileApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordHide value)? passwordHide,
    TResult? Function(LoginApi value)? loginApi,
    TResult? Function(ForgotPasswordRequest value)? forgot_password_request,
    TResult? Function(VerifyAccountOtpApi value)? verifyOtpApi,
    TResult? Function(Password_reset value)? password_reset,
    TResult? Function(GetProfileApi value)? getProfileApi,
  }) {
    return getProfileApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordHide value)? passwordHide,
    TResult Function(LoginApi value)? loginApi,
    TResult Function(ForgotPasswordRequest value)? forgot_password_request,
    TResult Function(VerifyAccountOtpApi value)? verifyOtpApi,
    TResult Function(Password_reset value)? password_reset,
    TResult Function(GetProfileApi value)? getProfileApi,
    required TResult orElse(),
  }) {
    if (getProfileApi != null) {
      return getProfileApi(this);
    }
    return orElse();
  }
}

abstract class GetProfileApi implements LoginEvent {
  const factory GetProfileApi({required final BuildContext context}) =
      _$GetProfileApiImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$GetProfileApiImplCopyWith<_$GetProfileApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  bool get passwordHide => throw _privateConstructorUsedError;
  bool get isLogin => throw _privateConstructorUsedError;
  bool get isForgotPasswordOtp => throw _privateConstructorUsedError;
  ForgotPasswordOtp? get forgotPasswordOtp =>
      throw _privateConstructorUsedError;
  LoginModel? get loginModel => throw _privateConstructorUsedError;
  bool get isOtpVerify => throw _privateConstructorUsedError;
  VerifyOtpModel? get verifyOtpModel => throw _privateConstructorUsedError;
  bool get isPasswordReset => throw _privateConstructorUsedError;
  PasswordReset? get passwordReset => throw _privateConstructorUsedError;
  GetProfileModel? get getProfileModel => throw _privateConstructorUsedError;
  bool get isProfile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool passwordHide,
      bool isLogin,
      bool isForgotPasswordOtp,
      ForgotPasswordOtp? forgotPasswordOtp,
      LoginModel? loginModel,
      bool isOtpVerify,
      VerifyOtpModel? verifyOtpModel,
      bool isPasswordReset,
      PasswordReset? passwordReset,
      GetProfileModel? getProfileModel,
      bool isProfile});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordHide = null,
    Object? isLogin = null,
    Object? isForgotPasswordOtp = null,
    Object? forgotPasswordOtp = freezed,
    Object? loginModel = freezed,
    Object? isOtpVerify = null,
    Object? verifyOtpModel = freezed,
    Object? isPasswordReset = null,
    Object? passwordReset = freezed,
    Object? getProfileModel = freezed,
    Object? isProfile = null,
  }) {
    return _then(_value.copyWith(
      passwordHide: null == passwordHide
          ? _value.passwordHide
          : passwordHide // ignore: cast_nullable_to_non_nullable
              as bool,
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      isForgotPasswordOtp: null == isForgotPasswordOtp
          ? _value.isForgotPasswordOtp
          : isForgotPasswordOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      forgotPasswordOtp: freezed == forgotPasswordOtp
          ? _value.forgotPasswordOtp
          : forgotPasswordOtp // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordOtp?,
      loginModel: freezed == loginModel
          ? _value.loginModel
          : loginModel // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
      isOtpVerify: null == isOtpVerify
          ? _value.isOtpVerify
          : isOtpVerify // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpModel: freezed == verifyOtpModel
          ? _value.verifyOtpModel
          : verifyOtpModel // ignore: cast_nullable_to_non_nullable
              as VerifyOtpModel?,
      isPasswordReset: null == isPasswordReset
          ? _value.isPasswordReset
          : isPasswordReset // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordReset: freezed == passwordReset
          ? _value.passwordReset
          : passwordReset // ignore: cast_nullable_to_non_nullable
              as PasswordReset?,
      getProfileModel: freezed == getProfileModel
          ? _value.getProfileModel
          : getProfileModel // ignore: cast_nullable_to_non_nullable
              as GetProfileModel?,
      isProfile: null == isProfile
          ? _value.isProfile
          : isProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool passwordHide,
      bool isLogin,
      bool isForgotPasswordOtp,
      ForgotPasswordOtp? forgotPasswordOtp,
      LoginModel? loginModel,
      bool isOtpVerify,
      VerifyOtpModel? verifyOtpModel,
      bool isPasswordReset,
      PasswordReset? passwordReset,
      GetProfileModel? getProfileModel,
      bool isProfile});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordHide = null,
    Object? isLogin = null,
    Object? isForgotPasswordOtp = null,
    Object? forgotPasswordOtp = freezed,
    Object? loginModel = freezed,
    Object? isOtpVerify = null,
    Object? verifyOtpModel = freezed,
    Object? isPasswordReset = null,
    Object? passwordReset = freezed,
    Object? getProfileModel = freezed,
    Object? isProfile = null,
  }) {
    return _then(_$LoginStateImpl(
      passwordHide: null == passwordHide
          ? _value.passwordHide
          : passwordHide // ignore: cast_nullable_to_non_nullable
              as bool,
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      isForgotPasswordOtp: null == isForgotPasswordOtp
          ? _value.isForgotPasswordOtp
          : isForgotPasswordOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      forgotPasswordOtp: freezed == forgotPasswordOtp
          ? _value.forgotPasswordOtp
          : forgotPasswordOtp // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordOtp?,
      loginModel: freezed == loginModel
          ? _value.loginModel
          : loginModel // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
      isOtpVerify: null == isOtpVerify
          ? _value.isOtpVerify
          : isOtpVerify // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpModel: freezed == verifyOtpModel
          ? _value.verifyOtpModel
          : verifyOtpModel // ignore: cast_nullable_to_non_nullable
              as VerifyOtpModel?,
      isPasswordReset: null == isPasswordReset
          ? _value.isPasswordReset
          : isPasswordReset // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordReset: freezed == passwordReset
          ? _value.passwordReset
          : passwordReset // ignore: cast_nullable_to_non_nullable
              as PasswordReset?,
      getProfileModel: freezed == getProfileModel
          ? _value.getProfileModel
          : getProfileModel // ignore: cast_nullable_to_non_nullable
              as GetProfileModel?,
      isProfile: null == isProfile
          ? _value.isProfile
          : isProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {this.passwordHide = false,
      this.isLogin = false,
      this.isForgotPasswordOtp = false,
      this.forgotPasswordOtp,
      this.loginModel,
      this.isOtpVerify = false,
      this.verifyOtpModel,
      this.isPasswordReset = false,
      this.passwordReset,
      this.getProfileModel,
      this.isProfile = false});

  @override
  @JsonKey()
  final bool passwordHide;
  @override
  @JsonKey()
  final bool isLogin;
  @override
  @JsonKey()
  final bool isForgotPasswordOtp;
  @override
  final ForgotPasswordOtp? forgotPasswordOtp;
  @override
  final LoginModel? loginModel;
  @override
  @JsonKey()
  final bool isOtpVerify;
  @override
  final VerifyOtpModel? verifyOtpModel;
  @override
  @JsonKey()
  final bool isPasswordReset;
  @override
  final PasswordReset? passwordReset;
  @override
  final GetProfileModel? getProfileModel;
  @override
  @JsonKey()
  final bool isProfile;

  @override
  String toString() {
    return 'LoginState(passwordHide: $passwordHide, isLogin: $isLogin, isForgotPasswordOtp: $isForgotPasswordOtp, forgotPasswordOtp: $forgotPasswordOtp, loginModel: $loginModel, isOtpVerify: $isOtpVerify, verifyOtpModel: $verifyOtpModel, isPasswordReset: $isPasswordReset, passwordReset: $passwordReset, getProfileModel: $getProfileModel, isProfile: $isProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.passwordHide, passwordHide) ||
                other.passwordHide == passwordHide) &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin) &&
            (identical(other.isForgotPasswordOtp, isForgotPasswordOtp) ||
                other.isForgotPasswordOtp == isForgotPasswordOtp) &&
            (identical(other.forgotPasswordOtp, forgotPasswordOtp) ||
                other.forgotPasswordOtp == forgotPasswordOtp) &&
            (identical(other.loginModel, loginModel) ||
                other.loginModel == loginModel) &&
            (identical(other.isOtpVerify, isOtpVerify) ||
                other.isOtpVerify == isOtpVerify) &&
            (identical(other.verifyOtpModel, verifyOtpModel) ||
                other.verifyOtpModel == verifyOtpModel) &&
            (identical(other.isPasswordReset, isPasswordReset) ||
                other.isPasswordReset == isPasswordReset) &&
            (identical(other.passwordReset, passwordReset) ||
                other.passwordReset == passwordReset) &&
            (identical(other.getProfileModel, getProfileModel) ||
                other.getProfileModel == getProfileModel) &&
            (identical(other.isProfile, isProfile) ||
                other.isProfile == isProfile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      passwordHide,
      isLogin,
      isForgotPasswordOtp,
      forgotPasswordOtp,
      loginModel,
      isOtpVerify,
      verifyOtpModel,
      isPasswordReset,
      passwordReset,
      getProfileModel,
      isProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final bool passwordHide,
      final bool isLogin,
      final bool isForgotPasswordOtp,
      final ForgotPasswordOtp? forgotPasswordOtp,
      final LoginModel? loginModel,
      final bool isOtpVerify,
      final VerifyOtpModel? verifyOtpModel,
      final bool isPasswordReset,
      final PasswordReset? passwordReset,
      final GetProfileModel? getProfileModel,
      final bool isProfile}) = _$LoginStateImpl;

  @override
  bool get passwordHide;
  @override
  bool get isLogin;
  @override
  bool get isForgotPasswordOtp;
  @override
  ForgotPasswordOtp? get forgotPasswordOtp;
  @override
  LoginModel? get loginModel;
  @override
  bool get isOtpVerify;
  @override
  VerifyOtpModel? get verifyOtpModel;
  @override
  bool get isPasswordReset;
  @override
  PasswordReset? get passwordReset;
  @override
  GetProfileModel? get getProfileModel;
  @override
  bool get isProfile;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
