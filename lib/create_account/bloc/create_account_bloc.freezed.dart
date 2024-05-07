// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHide) passwordHide,
    required TResult Function(String name, String email, String password,
            String phone_number, BuildContext context)
        createAccountApi,
    required TResult Function(
            String phone_number, String otp, BuildContext context)
        verifyCreateAccountOtpApi,
    required TResult Function(BuildContext context) getProfileApi,
    required TResult Function(BuildContext context) getProfileEditApi,
    required TResult Function(BuildContext context) getTermsAndCondition,
    required TResult Function() getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordHide)? passwordHide,
    TResult? Function(String name, String email, String password,
            String phone_number, BuildContext context)?
        createAccountApi,
    TResult? Function(String phone_number, String otp, BuildContext context)?
        verifyCreateAccountOtpApi,
    TResult? Function(BuildContext context)? getProfileApi,
    TResult? Function(BuildContext context)? getProfileEditApi,
    TResult? Function(BuildContext context)? getTermsAndCondition,
    TResult? Function()? getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHide)? passwordHide,
    TResult Function(String name, String email, String password,
            String phone_number, BuildContext context)?
        createAccountApi,
    TResult Function(String phone_number, String otp, BuildContext context)?
        verifyCreateAccountOtpApi,
    TResult Function(BuildContext context)? getProfileApi,
    TResult Function(BuildContext context)? getProfileEditApi,
    TResult Function(BuildContext context)? getTermsAndCondition,
    TResult Function()? getUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordHide value) passwordHide,
    required TResult Function(CreateAccountApi value) createAccountApi,
    required TResult Function(VerifyCreateAccountOtpApi value)
        verifyCreateAccountOtpApi,
    required TResult Function(GetProfileApi value) getProfileApi,
    required TResult Function(GetProfileEditApi value) getProfileEditApi,
    required TResult Function(GetTermsAndCondition value) getTermsAndCondition,
    required TResult Function(GetUser value) getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordHide value)? passwordHide,
    TResult? Function(CreateAccountApi value)? createAccountApi,
    TResult? Function(VerifyCreateAccountOtpApi value)?
        verifyCreateAccountOtpApi,
    TResult? Function(GetProfileApi value)? getProfileApi,
    TResult? Function(GetProfileEditApi value)? getProfileEditApi,
    TResult? Function(GetTermsAndCondition value)? getTermsAndCondition,
    TResult? Function(GetUser value)? getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordHide value)? passwordHide,
    TResult Function(CreateAccountApi value)? createAccountApi,
    TResult Function(VerifyCreateAccountOtpApi value)?
        verifyCreateAccountOtpApi,
    TResult Function(GetProfileApi value)? getProfileApi,
    TResult Function(GetProfileEditApi value)? getProfileEditApi,
    TResult Function(GetTermsAndCondition value)? getTermsAndCondition,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountEventCopyWith<$Res> {
  factory $CreateAccountEventCopyWith(
          CreateAccountEvent value, $Res Function(CreateAccountEvent) then) =
      _$CreateAccountEventCopyWithImpl<$Res, CreateAccountEvent>;
}

/// @nodoc
class _$CreateAccountEventCopyWithImpl<$Res, $Val extends CreateAccountEvent>
    implements $CreateAccountEventCopyWith<$Res> {
  _$CreateAccountEventCopyWithImpl(this._value, this._then);

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
    extends _$CreateAccountEventCopyWithImpl<$Res, _$PasswordHideImpl>
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
    return 'CreateAccountEvent.passwordHide(isPasswordHide: $isPasswordHide)';
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
    required TResult Function(String name, String email, String password,
            String phone_number, BuildContext context)
        createAccountApi,
    required TResult Function(
            String phone_number, String otp, BuildContext context)
        verifyCreateAccountOtpApi,
    required TResult Function(BuildContext context) getProfileApi,
    required TResult Function(BuildContext context) getProfileEditApi,
    required TResult Function(BuildContext context) getTermsAndCondition,
    required TResult Function() getUser,
  }) {
    return passwordHide(isPasswordHide);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordHide)? passwordHide,
    TResult? Function(String name, String email, String password,
            String phone_number, BuildContext context)?
        createAccountApi,
    TResult? Function(String phone_number, String otp, BuildContext context)?
        verifyCreateAccountOtpApi,
    TResult? Function(BuildContext context)? getProfileApi,
    TResult? Function(BuildContext context)? getProfileEditApi,
    TResult? Function(BuildContext context)? getTermsAndCondition,
    TResult? Function()? getUser,
  }) {
    return passwordHide?.call(isPasswordHide);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHide)? passwordHide,
    TResult Function(String name, String email, String password,
            String phone_number, BuildContext context)?
        createAccountApi,
    TResult Function(String phone_number, String otp, BuildContext context)?
        verifyCreateAccountOtpApi,
    TResult Function(BuildContext context)? getProfileApi,
    TResult Function(BuildContext context)? getProfileEditApi,
    TResult Function(BuildContext context)? getTermsAndCondition,
    TResult Function()? getUser,
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
    required TResult Function(CreateAccountApi value) createAccountApi,
    required TResult Function(VerifyCreateAccountOtpApi value)
        verifyCreateAccountOtpApi,
    required TResult Function(GetProfileApi value) getProfileApi,
    required TResult Function(GetProfileEditApi value) getProfileEditApi,
    required TResult Function(GetTermsAndCondition value) getTermsAndCondition,
    required TResult Function(GetUser value) getUser,
  }) {
    return passwordHide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordHide value)? passwordHide,
    TResult? Function(CreateAccountApi value)? createAccountApi,
    TResult? Function(VerifyCreateAccountOtpApi value)?
        verifyCreateAccountOtpApi,
    TResult? Function(GetProfileApi value)? getProfileApi,
    TResult? Function(GetProfileEditApi value)? getProfileEditApi,
    TResult? Function(GetTermsAndCondition value)? getTermsAndCondition,
    TResult? Function(GetUser value)? getUser,
  }) {
    return passwordHide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordHide value)? passwordHide,
    TResult Function(CreateAccountApi value)? createAccountApi,
    TResult Function(VerifyCreateAccountOtpApi value)?
        verifyCreateAccountOtpApi,
    TResult Function(GetProfileApi value)? getProfileApi,
    TResult Function(GetProfileEditApi value)? getProfileEditApi,
    TResult Function(GetTermsAndCondition value)? getTermsAndCondition,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (passwordHide != null) {
      return passwordHide(this);
    }
    return orElse();
  }
}

abstract class PasswordHide implements CreateAccountEvent {
  const factory PasswordHide({required final bool isPasswordHide}) =
      _$PasswordHideImpl;

  bool get isPasswordHide;
  @JsonKey(ignore: true)
  _$$PasswordHideImplCopyWith<_$PasswordHideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateAccountApiImplCopyWith<$Res> {
  factory _$$CreateAccountApiImplCopyWith(_$CreateAccountApiImpl value,
          $Res Function(_$CreateAccountApiImpl) then) =
      __$$CreateAccountApiImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      String phone_number,
      BuildContext context});
}

/// @nodoc
class __$$CreateAccountApiImplCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res, _$CreateAccountApiImpl>
    implements _$$CreateAccountApiImplCopyWith<$Res> {
  __$$CreateAccountApiImplCopyWithImpl(_$CreateAccountApiImpl _value,
      $Res Function(_$CreateAccountApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? phone_number = null,
    Object? context = null,
  }) {
    return _then(_$CreateAccountApiImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$CreateAccountApiImpl implements CreateAccountApi {
  const _$CreateAccountApiImpl(
      {required this.name,
      required this.email,
      required this.password,
      required this.phone_number,
      required this.context});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String phone_number;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CreateAccountEvent.createAccountApi(name: $name, email: $email, password: $password, phone_number: $phone_number, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountApiImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone_number, phone_number) ||
                other.phone_number == phone_number) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, password, phone_number, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAccountApiImplCopyWith<_$CreateAccountApiImpl> get copyWith =>
      __$$CreateAccountApiImplCopyWithImpl<_$CreateAccountApiImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHide) passwordHide,
    required TResult Function(String name, String email, String password,
            String phone_number, BuildContext context)
        createAccountApi,
    required TResult Function(
            String phone_number, String otp, BuildContext context)
        verifyCreateAccountOtpApi,
    required TResult Function(BuildContext context) getProfileApi,
    required TResult Function(BuildContext context) getProfileEditApi,
    required TResult Function(BuildContext context) getTermsAndCondition,
    required TResult Function() getUser,
  }) {
    return createAccountApi(name, email, password, phone_number, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordHide)? passwordHide,
    TResult? Function(String name, String email, String password,
            String phone_number, BuildContext context)?
        createAccountApi,
    TResult? Function(String phone_number, String otp, BuildContext context)?
        verifyCreateAccountOtpApi,
    TResult? Function(BuildContext context)? getProfileApi,
    TResult? Function(BuildContext context)? getProfileEditApi,
    TResult? Function(BuildContext context)? getTermsAndCondition,
    TResult? Function()? getUser,
  }) {
    return createAccountApi?.call(name, email, password, phone_number, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHide)? passwordHide,
    TResult Function(String name, String email, String password,
            String phone_number, BuildContext context)?
        createAccountApi,
    TResult Function(String phone_number, String otp, BuildContext context)?
        verifyCreateAccountOtpApi,
    TResult Function(BuildContext context)? getProfileApi,
    TResult Function(BuildContext context)? getProfileEditApi,
    TResult Function(BuildContext context)? getTermsAndCondition,
    TResult Function()? getUser,
    required TResult orElse(),
  }) {
    if (createAccountApi != null) {
      return createAccountApi(name, email, password, phone_number, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordHide value) passwordHide,
    required TResult Function(CreateAccountApi value) createAccountApi,
    required TResult Function(VerifyCreateAccountOtpApi value)
        verifyCreateAccountOtpApi,
    required TResult Function(GetProfileApi value) getProfileApi,
    required TResult Function(GetProfileEditApi value) getProfileEditApi,
    required TResult Function(GetTermsAndCondition value) getTermsAndCondition,
    required TResult Function(GetUser value) getUser,
  }) {
    return createAccountApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordHide value)? passwordHide,
    TResult? Function(CreateAccountApi value)? createAccountApi,
    TResult? Function(VerifyCreateAccountOtpApi value)?
        verifyCreateAccountOtpApi,
    TResult? Function(GetProfileApi value)? getProfileApi,
    TResult? Function(GetProfileEditApi value)? getProfileEditApi,
    TResult? Function(GetTermsAndCondition value)? getTermsAndCondition,
    TResult? Function(GetUser value)? getUser,
  }) {
    return createAccountApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordHide value)? passwordHide,
    TResult Function(CreateAccountApi value)? createAccountApi,
    TResult Function(VerifyCreateAccountOtpApi value)?
        verifyCreateAccountOtpApi,
    TResult Function(GetProfileApi value)? getProfileApi,
    TResult Function(GetProfileEditApi value)? getProfileEditApi,
    TResult Function(GetTermsAndCondition value)? getTermsAndCondition,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (createAccountApi != null) {
      return createAccountApi(this);
    }
    return orElse();
  }
}

abstract class CreateAccountApi implements CreateAccountEvent {
  const factory CreateAccountApi(
      {required final String name,
      required final String email,
      required final String password,
      required final String phone_number,
      required final BuildContext context}) = _$CreateAccountApiImpl;

  String get name;
  String get email;
  String get password;
  String get phone_number;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$CreateAccountApiImplCopyWith<_$CreateAccountApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyCreateAccountOtpApiImplCopyWith<$Res> {
  factory _$$VerifyCreateAccountOtpApiImplCopyWith(
          _$VerifyCreateAccountOtpApiImpl value,
          $Res Function(_$VerifyCreateAccountOtpApiImpl) then) =
      __$$VerifyCreateAccountOtpApiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone_number, String otp, BuildContext context});
}

/// @nodoc
class __$$VerifyCreateAccountOtpApiImplCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res,
        _$VerifyCreateAccountOtpApiImpl>
    implements _$$VerifyCreateAccountOtpApiImplCopyWith<$Res> {
  __$$VerifyCreateAccountOtpApiImplCopyWithImpl(
      _$VerifyCreateAccountOtpApiImpl _value,
      $Res Function(_$VerifyCreateAccountOtpApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone_number = null,
    Object? otp = null,
    Object? context = null,
  }) {
    return _then(_$VerifyCreateAccountOtpApiImpl(
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$VerifyCreateAccountOtpApiImpl implements VerifyCreateAccountOtpApi {
  const _$VerifyCreateAccountOtpApiImpl(
      {required this.phone_number, required this.otp, required this.context});

  @override
  final String phone_number;
  @override
  final String otp;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CreateAccountEvent.verifyCreateAccountOtpApi(phone_number: $phone_number, otp: $otp, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyCreateAccountOtpApiImpl &&
            (identical(other.phone_number, phone_number) ||
                other.phone_number == phone_number) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone_number, otp, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyCreateAccountOtpApiImplCopyWith<_$VerifyCreateAccountOtpApiImpl>
      get copyWith => __$$VerifyCreateAccountOtpApiImplCopyWithImpl<
          _$VerifyCreateAccountOtpApiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHide) passwordHide,
    required TResult Function(String name, String email, String password,
            String phone_number, BuildContext context)
        createAccountApi,
    required TResult Function(
            String phone_number, String otp, BuildContext context)
        verifyCreateAccountOtpApi,
    required TResult Function(BuildContext context) getProfileApi,
    required TResult Function(BuildContext context) getProfileEditApi,
    required TResult Function(BuildContext context) getTermsAndCondition,
    required TResult Function() getUser,
  }) {
    return verifyCreateAccountOtpApi(phone_number, otp, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordHide)? passwordHide,
    TResult? Function(String name, String email, String password,
            String phone_number, BuildContext context)?
        createAccountApi,
    TResult? Function(String phone_number, String otp, BuildContext context)?
        verifyCreateAccountOtpApi,
    TResult? Function(BuildContext context)? getProfileApi,
    TResult? Function(BuildContext context)? getProfileEditApi,
    TResult? Function(BuildContext context)? getTermsAndCondition,
    TResult? Function()? getUser,
  }) {
    return verifyCreateAccountOtpApi?.call(phone_number, otp, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHide)? passwordHide,
    TResult Function(String name, String email, String password,
            String phone_number, BuildContext context)?
        createAccountApi,
    TResult Function(String phone_number, String otp, BuildContext context)?
        verifyCreateAccountOtpApi,
    TResult Function(BuildContext context)? getProfileApi,
    TResult Function(BuildContext context)? getProfileEditApi,
    TResult Function(BuildContext context)? getTermsAndCondition,
    TResult Function()? getUser,
    required TResult orElse(),
  }) {
    if (verifyCreateAccountOtpApi != null) {
      return verifyCreateAccountOtpApi(phone_number, otp, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordHide value) passwordHide,
    required TResult Function(CreateAccountApi value) createAccountApi,
    required TResult Function(VerifyCreateAccountOtpApi value)
        verifyCreateAccountOtpApi,
    required TResult Function(GetProfileApi value) getProfileApi,
    required TResult Function(GetProfileEditApi value) getProfileEditApi,
    required TResult Function(GetTermsAndCondition value) getTermsAndCondition,
    required TResult Function(GetUser value) getUser,
  }) {
    return verifyCreateAccountOtpApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordHide value)? passwordHide,
    TResult? Function(CreateAccountApi value)? createAccountApi,
    TResult? Function(VerifyCreateAccountOtpApi value)?
        verifyCreateAccountOtpApi,
    TResult? Function(GetProfileApi value)? getProfileApi,
    TResult? Function(GetProfileEditApi value)? getProfileEditApi,
    TResult? Function(GetTermsAndCondition value)? getTermsAndCondition,
    TResult? Function(GetUser value)? getUser,
  }) {
    return verifyCreateAccountOtpApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordHide value)? passwordHide,
    TResult Function(CreateAccountApi value)? createAccountApi,
    TResult Function(VerifyCreateAccountOtpApi value)?
        verifyCreateAccountOtpApi,
    TResult Function(GetProfileApi value)? getProfileApi,
    TResult Function(GetProfileEditApi value)? getProfileEditApi,
    TResult Function(GetTermsAndCondition value)? getTermsAndCondition,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (verifyCreateAccountOtpApi != null) {
      return verifyCreateAccountOtpApi(this);
    }
    return orElse();
  }
}

abstract class VerifyCreateAccountOtpApi implements CreateAccountEvent {
  const factory VerifyCreateAccountOtpApi(
      {required final String phone_number,
      required final String otp,
      required final BuildContext context}) = _$VerifyCreateAccountOtpApiImpl;

  String get phone_number;
  String get otp;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$VerifyCreateAccountOtpApiImplCopyWith<_$VerifyCreateAccountOtpApiImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$CreateAccountEventCopyWithImpl<$Res, _$GetProfileApiImpl>
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
    return 'CreateAccountEvent.getProfileApi(context: $context)';
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
    required TResult Function(String name, String email, String password,
            String phone_number, BuildContext context)
        createAccountApi,
    required TResult Function(
            String phone_number, String otp, BuildContext context)
        verifyCreateAccountOtpApi,
    required TResult Function(BuildContext context) getProfileApi,
    required TResult Function(BuildContext context) getProfileEditApi,
    required TResult Function(BuildContext context) getTermsAndCondition,
    required TResult Function() getUser,
  }) {
    return getProfileApi(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordHide)? passwordHide,
    TResult? Function(String name, String email, String password,
            String phone_number, BuildContext context)?
        createAccountApi,
    TResult? Function(String phone_number, String otp, BuildContext context)?
        verifyCreateAccountOtpApi,
    TResult? Function(BuildContext context)? getProfileApi,
    TResult? Function(BuildContext context)? getProfileEditApi,
    TResult? Function(BuildContext context)? getTermsAndCondition,
    TResult? Function()? getUser,
  }) {
    return getProfileApi?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHide)? passwordHide,
    TResult Function(String name, String email, String password,
            String phone_number, BuildContext context)?
        createAccountApi,
    TResult Function(String phone_number, String otp, BuildContext context)?
        verifyCreateAccountOtpApi,
    TResult Function(BuildContext context)? getProfileApi,
    TResult Function(BuildContext context)? getProfileEditApi,
    TResult Function(BuildContext context)? getTermsAndCondition,
    TResult Function()? getUser,
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
    required TResult Function(CreateAccountApi value) createAccountApi,
    required TResult Function(VerifyCreateAccountOtpApi value)
        verifyCreateAccountOtpApi,
    required TResult Function(GetProfileApi value) getProfileApi,
    required TResult Function(GetProfileEditApi value) getProfileEditApi,
    required TResult Function(GetTermsAndCondition value) getTermsAndCondition,
    required TResult Function(GetUser value) getUser,
  }) {
    return getProfileApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordHide value)? passwordHide,
    TResult? Function(CreateAccountApi value)? createAccountApi,
    TResult? Function(VerifyCreateAccountOtpApi value)?
        verifyCreateAccountOtpApi,
    TResult? Function(GetProfileApi value)? getProfileApi,
    TResult? Function(GetProfileEditApi value)? getProfileEditApi,
    TResult? Function(GetTermsAndCondition value)? getTermsAndCondition,
    TResult? Function(GetUser value)? getUser,
  }) {
    return getProfileApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordHide value)? passwordHide,
    TResult Function(CreateAccountApi value)? createAccountApi,
    TResult Function(VerifyCreateAccountOtpApi value)?
        verifyCreateAccountOtpApi,
    TResult Function(GetProfileApi value)? getProfileApi,
    TResult Function(GetProfileEditApi value)? getProfileEditApi,
    TResult Function(GetTermsAndCondition value)? getTermsAndCondition,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (getProfileApi != null) {
      return getProfileApi(this);
    }
    return orElse();
  }
}

abstract class GetProfileApi implements CreateAccountEvent {
  const factory GetProfileApi({required final BuildContext context}) =
      _$GetProfileApiImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$GetProfileApiImplCopyWith<_$GetProfileApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProfileEditApiImplCopyWith<$Res> {
  factory _$$GetProfileEditApiImplCopyWith(_$GetProfileEditApiImpl value,
          $Res Function(_$GetProfileEditApiImpl) then) =
      __$$GetProfileEditApiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$GetProfileEditApiImplCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res, _$GetProfileEditApiImpl>
    implements _$$GetProfileEditApiImplCopyWith<$Res> {
  __$$GetProfileEditApiImplCopyWithImpl(_$GetProfileEditApiImpl _value,
      $Res Function(_$GetProfileEditApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$GetProfileEditApiImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$GetProfileEditApiImpl implements GetProfileEditApi {
  const _$GetProfileEditApiImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CreateAccountEvent.getProfileEditApi(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileEditApiImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileEditApiImplCopyWith<_$GetProfileEditApiImpl> get copyWith =>
      __$$GetProfileEditApiImplCopyWithImpl<_$GetProfileEditApiImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHide) passwordHide,
    required TResult Function(String name, String email, String password,
            String phone_number, BuildContext context)
        createAccountApi,
    required TResult Function(
            String phone_number, String otp, BuildContext context)
        verifyCreateAccountOtpApi,
    required TResult Function(BuildContext context) getProfileApi,
    required TResult Function(BuildContext context) getProfileEditApi,
    required TResult Function(BuildContext context) getTermsAndCondition,
    required TResult Function() getUser,
  }) {
    return getProfileEditApi(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordHide)? passwordHide,
    TResult? Function(String name, String email, String password,
            String phone_number, BuildContext context)?
        createAccountApi,
    TResult? Function(String phone_number, String otp, BuildContext context)?
        verifyCreateAccountOtpApi,
    TResult? Function(BuildContext context)? getProfileApi,
    TResult? Function(BuildContext context)? getProfileEditApi,
    TResult? Function(BuildContext context)? getTermsAndCondition,
    TResult? Function()? getUser,
  }) {
    return getProfileEditApi?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHide)? passwordHide,
    TResult Function(String name, String email, String password,
            String phone_number, BuildContext context)?
        createAccountApi,
    TResult Function(String phone_number, String otp, BuildContext context)?
        verifyCreateAccountOtpApi,
    TResult Function(BuildContext context)? getProfileApi,
    TResult Function(BuildContext context)? getProfileEditApi,
    TResult Function(BuildContext context)? getTermsAndCondition,
    TResult Function()? getUser,
    required TResult orElse(),
  }) {
    if (getProfileEditApi != null) {
      return getProfileEditApi(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordHide value) passwordHide,
    required TResult Function(CreateAccountApi value) createAccountApi,
    required TResult Function(VerifyCreateAccountOtpApi value)
        verifyCreateAccountOtpApi,
    required TResult Function(GetProfileApi value) getProfileApi,
    required TResult Function(GetProfileEditApi value) getProfileEditApi,
    required TResult Function(GetTermsAndCondition value) getTermsAndCondition,
    required TResult Function(GetUser value) getUser,
  }) {
    return getProfileEditApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordHide value)? passwordHide,
    TResult? Function(CreateAccountApi value)? createAccountApi,
    TResult? Function(VerifyCreateAccountOtpApi value)?
        verifyCreateAccountOtpApi,
    TResult? Function(GetProfileApi value)? getProfileApi,
    TResult? Function(GetProfileEditApi value)? getProfileEditApi,
    TResult? Function(GetTermsAndCondition value)? getTermsAndCondition,
    TResult? Function(GetUser value)? getUser,
  }) {
    return getProfileEditApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordHide value)? passwordHide,
    TResult Function(CreateAccountApi value)? createAccountApi,
    TResult Function(VerifyCreateAccountOtpApi value)?
        verifyCreateAccountOtpApi,
    TResult Function(GetProfileApi value)? getProfileApi,
    TResult Function(GetProfileEditApi value)? getProfileEditApi,
    TResult Function(GetTermsAndCondition value)? getTermsAndCondition,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (getProfileEditApi != null) {
      return getProfileEditApi(this);
    }
    return orElse();
  }
}

abstract class GetProfileEditApi implements CreateAccountEvent {
  const factory GetProfileEditApi({required final BuildContext context}) =
      _$GetProfileEditApiImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$GetProfileEditApiImplCopyWith<_$GetProfileEditApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTermsAndConditionImplCopyWith<$Res> {
  factory _$$GetTermsAndConditionImplCopyWith(_$GetTermsAndConditionImpl value,
          $Res Function(_$GetTermsAndConditionImpl) then) =
      __$$GetTermsAndConditionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$GetTermsAndConditionImplCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res, _$GetTermsAndConditionImpl>
    implements _$$GetTermsAndConditionImplCopyWith<$Res> {
  __$$GetTermsAndConditionImplCopyWithImpl(_$GetTermsAndConditionImpl _value,
      $Res Function(_$GetTermsAndConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$GetTermsAndConditionImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$GetTermsAndConditionImpl implements GetTermsAndCondition {
  const _$GetTermsAndConditionImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CreateAccountEvent.getTermsAndCondition(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTermsAndConditionImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTermsAndConditionImplCopyWith<_$GetTermsAndConditionImpl>
      get copyWith =>
          __$$GetTermsAndConditionImplCopyWithImpl<_$GetTermsAndConditionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHide) passwordHide,
    required TResult Function(String name, String email, String password,
            String phone_number, BuildContext context)
        createAccountApi,
    required TResult Function(
            String phone_number, String otp, BuildContext context)
        verifyCreateAccountOtpApi,
    required TResult Function(BuildContext context) getProfileApi,
    required TResult Function(BuildContext context) getProfileEditApi,
    required TResult Function(BuildContext context) getTermsAndCondition,
    required TResult Function() getUser,
  }) {
    return getTermsAndCondition(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordHide)? passwordHide,
    TResult? Function(String name, String email, String password,
            String phone_number, BuildContext context)?
        createAccountApi,
    TResult? Function(String phone_number, String otp, BuildContext context)?
        verifyCreateAccountOtpApi,
    TResult? Function(BuildContext context)? getProfileApi,
    TResult? Function(BuildContext context)? getProfileEditApi,
    TResult? Function(BuildContext context)? getTermsAndCondition,
    TResult? Function()? getUser,
  }) {
    return getTermsAndCondition?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHide)? passwordHide,
    TResult Function(String name, String email, String password,
            String phone_number, BuildContext context)?
        createAccountApi,
    TResult Function(String phone_number, String otp, BuildContext context)?
        verifyCreateAccountOtpApi,
    TResult Function(BuildContext context)? getProfileApi,
    TResult Function(BuildContext context)? getProfileEditApi,
    TResult Function(BuildContext context)? getTermsAndCondition,
    TResult Function()? getUser,
    required TResult orElse(),
  }) {
    if (getTermsAndCondition != null) {
      return getTermsAndCondition(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordHide value) passwordHide,
    required TResult Function(CreateAccountApi value) createAccountApi,
    required TResult Function(VerifyCreateAccountOtpApi value)
        verifyCreateAccountOtpApi,
    required TResult Function(GetProfileApi value) getProfileApi,
    required TResult Function(GetProfileEditApi value) getProfileEditApi,
    required TResult Function(GetTermsAndCondition value) getTermsAndCondition,
    required TResult Function(GetUser value) getUser,
  }) {
    return getTermsAndCondition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordHide value)? passwordHide,
    TResult? Function(CreateAccountApi value)? createAccountApi,
    TResult? Function(VerifyCreateAccountOtpApi value)?
        verifyCreateAccountOtpApi,
    TResult? Function(GetProfileApi value)? getProfileApi,
    TResult? Function(GetProfileEditApi value)? getProfileEditApi,
    TResult? Function(GetTermsAndCondition value)? getTermsAndCondition,
    TResult? Function(GetUser value)? getUser,
  }) {
    return getTermsAndCondition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordHide value)? passwordHide,
    TResult Function(CreateAccountApi value)? createAccountApi,
    TResult Function(VerifyCreateAccountOtpApi value)?
        verifyCreateAccountOtpApi,
    TResult Function(GetProfileApi value)? getProfileApi,
    TResult Function(GetProfileEditApi value)? getProfileEditApi,
    TResult Function(GetTermsAndCondition value)? getTermsAndCondition,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (getTermsAndCondition != null) {
      return getTermsAndCondition(this);
    }
    return orElse();
  }
}

abstract class GetTermsAndCondition implements CreateAccountEvent {
  const factory GetTermsAndCondition({required final BuildContext context}) =
      _$GetTermsAndConditionImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$GetTermsAndConditionImplCopyWith<_$GetTermsAndConditionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserImplCopyWith<$Res> {
  factory _$$GetUserImplCopyWith(
          _$GetUserImpl value, $Res Function(_$GetUserImpl) then) =
      __$$GetUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserImplCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res, _$GetUserImpl>
    implements _$$GetUserImplCopyWith<$Res> {
  __$$GetUserImplCopyWithImpl(
      _$GetUserImpl _value, $Res Function(_$GetUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserImpl implements GetUser {
  const _$GetUserImpl();

  @override
  String toString() {
    return 'CreateAccountEvent.getUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHide) passwordHide,
    required TResult Function(String name, String email, String password,
            String phone_number, BuildContext context)
        createAccountApi,
    required TResult Function(
            String phone_number, String otp, BuildContext context)
        verifyCreateAccountOtpApi,
    required TResult Function(BuildContext context) getProfileApi,
    required TResult Function(BuildContext context) getProfileEditApi,
    required TResult Function(BuildContext context) getTermsAndCondition,
    required TResult Function() getUser,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordHide)? passwordHide,
    TResult? Function(String name, String email, String password,
            String phone_number, BuildContext context)?
        createAccountApi,
    TResult? Function(String phone_number, String otp, BuildContext context)?
        verifyCreateAccountOtpApi,
    TResult? Function(BuildContext context)? getProfileApi,
    TResult? Function(BuildContext context)? getProfileEditApi,
    TResult? Function(BuildContext context)? getTermsAndCondition,
    TResult? Function()? getUser,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHide)? passwordHide,
    TResult Function(String name, String email, String password,
            String phone_number, BuildContext context)?
        createAccountApi,
    TResult Function(String phone_number, String otp, BuildContext context)?
        verifyCreateAccountOtpApi,
    TResult Function(BuildContext context)? getProfileApi,
    TResult Function(BuildContext context)? getProfileEditApi,
    TResult Function(BuildContext context)? getTermsAndCondition,
    TResult Function()? getUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordHide value) passwordHide,
    required TResult Function(CreateAccountApi value) createAccountApi,
    required TResult Function(VerifyCreateAccountOtpApi value)
        verifyCreateAccountOtpApi,
    required TResult Function(GetProfileApi value) getProfileApi,
    required TResult Function(GetProfileEditApi value) getProfileEditApi,
    required TResult Function(GetTermsAndCondition value) getTermsAndCondition,
    required TResult Function(GetUser value) getUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordHide value)? passwordHide,
    TResult? Function(CreateAccountApi value)? createAccountApi,
    TResult? Function(VerifyCreateAccountOtpApi value)?
        verifyCreateAccountOtpApi,
    TResult? Function(GetProfileApi value)? getProfileApi,
    TResult? Function(GetProfileEditApi value)? getProfileEditApi,
    TResult? Function(GetTermsAndCondition value)? getTermsAndCondition,
    TResult? Function(GetUser value)? getUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordHide value)? passwordHide,
    TResult Function(CreateAccountApi value)? createAccountApi,
    TResult Function(VerifyCreateAccountOtpApi value)?
        verifyCreateAccountOtpApi,
    TResult Function(GetProfileApi value)? getProfileApi,
    TResult Function(GetProfileEditApi value)? getProfileEditApi,
    TResult Function(GetTermsAndCondition value)? getTermsAndCondition,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class GetUser implements CreateAccountEvent {
  const factory GetUser() = _$GetUserImpl;
}

/// @nodoc
mixin _$CreateAccountState {
  bool get passwordHide => throw _privateConstructorUsedError;
  bool get isSingnUpApiHit => throw _privateConstructorUsedError;
  SignUpModel? get signUpModel => throw _privateConstructorUsedError;
  bool get isOtpVerify => throw _privateConstructorUsedError;
  VerifyOtpModel? get verifyOtpModel => throw _privateConstructorUsedError;
  bool get isProfileStatus => throw _privateConstructorUsedError;
  GetProfileModel? get getProfileModel => throw _privateConstructorUsedError;
  bool get isTermsAndCondition => throw _privateConstructorUsedError;
  TermsAndConditionModel? get termsAndConditionModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateAccountStateCopyWith<CreateAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountStateCopyWith<$Res> {
  factory $CreateAccountStateCopyWith(
          CreateAccountState value, $Res Function(CreateAccountState) then) =
      _$CreateAccountStateCopyWithImpl<$Res, CreateAccountState>;
  @useResult
  $Res call(
      {bool passwordHide,
      bool isSingnUpApiHit,
      SignUpModel? signUpModel,
      bool isOtpVerify,
      VerifyOtpModel? verifyOtpModel,
      bool isProfileStatus,
      GetProfileModel? getProfileModel,
      bool isTermsAndCondition,
      TermsAndConditionModel? termsAndConditionModel});
}

/// @nodoc
class _$CreateAccountStateCopyWithImpl<$Res, $Val extends CreateAccountState>
    implements $CreateAccountStateCopyWith<$Res> {
  _$CreateAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordHide = null,
    Object? isSingnUpApiHit = null,
    Object? signUpModel = freezed,
    Object? isOtpVerify = null,
    Object? verifyOtpModel = freezed,
    Object? isProfileStatus = null,
    Object? getProfileModel = freezed,
    Object? isTermsAndCondition = null,
    Object? termsAndConditionModel = freezed,
  }) {
    return _then(_value.copyWith(
      passwordHide: null == passwordHide
          ? _value.passwordHide
          : passwordHide // ignore: cast_nullable_to_non_nullable
              as bool,
      isSingnUpApiHit: null == isSingnUpApiHit
          ? _value.isSingnUpApiHit
          : isSingnUpApiHit // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpModel: freezed == signUpModel
          ? _value.signUpModel
          : signUpModel // ignore: cast_nullable_to_non_nullable
              as SignUpModel?,
      isOtpVerify: null == isOtpVerify
          ? _value.isOtpVerify
          : isOtpVerify // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpModel: freezed == verifyOtpModel
          ? _value.verifyOtpModel
          : verifyOtpModel // ignore: cast_nullable_to_non_nullable
              as VerifyOtpModel?,
      isProfileStatus: null == isProfileStatus
          ? _value.isProfileStatus
          : isProfileStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      getProfileModel: freezed == getProfileModel
          ? _value.getProfileModel
          : getProfileModel // ignore: cast_nullable_to_non_nullable
              as GetProfileModel?,
      isTermsAndCondition: null == isTermsAndCondition
          ? _value.isTermsAndCondition
          : isTermsAndCondition // ignore: cast_nullable_to_non_nullable
              as bool,
      termsAndConditionModel: freezed == termsAndConditionModel
          ? _value.termsAndConditionModel
          : termsAndConditionModel // ignore: cast_nullable_to_non_nullable
              as TermsAndConditionModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAccountStateImplCopyWith<$Res>
    implements $CreateAccountStateCopyWith<$Res> {
  factory _$$CreateAccountStateImplCopyWith(_$CreateAccountStateImpl value,
          $Res Function(_$CreateAccountStateImpl) then) =
      __$$CreateAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool passwordHide,
      bool isSingnUpApiHit,
      SignUpModel? signUpModel,
      bool isOtpVerify,
      VerifyOtpModel? verifyOtpModel,
      bool isProfileStatus,
      GetProfileModel? getProfileModel,
      bool isTermsAndCondition,
      TermsAndConditionModel? termsAndConditionModel});
}

/// @nodoc
class __$$CreateAccountStateImplCopyWithImpl<$Res>
    extends _$CreateAccountStateCopyWithImpl<$Res, _$CreateAccountStateImpl>
    implements _$$CreateAccountStateImplCopyWith<$Res> {
  __$$CreateAccountStateImplCopyWithImpl(_$CreateAccountStateImpl _value,
      $Res Function(_$CreateAccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordHide = null,
    Object? isSingnUpApiHit = null,
    Object? signUpModel = freezed,
    Object? isOtpVerify = null,
    Object? verifyOtpModel = freezed,
    Object? isProfileStatus = null,
    Object? getProfileModel = freezed,
    Object? isTermsAndCondition = null,
    Object? termsAndConditionModel = freezed,
  }) {
    return _then(_$CreateAccountStateImpl(
      passwordHide: null == passwordHide
          ? _value.passwordHide
          : passwordHide // ignore: cast_nullable_to_non_nullable
              as bool,
      isSingnUpApiHit: null == isSingnUpApiHit
          ? _value.isSingnUpApiHit
          : isSingnUpApiHit // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpModel: freezed == signUpModel
          ? _value.signUpModel
          : signUpModel // ignore: cast_nullable_to_non_nullable
              as SignUpModel?,
      isOtpVerify: null == isOtpVerify
          ? _value.isOtpVerify
          : isOtpVerify // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpModel: freezed == verifyOtpModel
          ? _value.verifyOtpModel
          : verifyOtpModel // ignore: cast_nullable_to_non_nullable
              as VerifyOtpModel?,
      isProfileStatus: null == isProfileStatus
          ? _value.isProfileStatus
          : isProfileStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      getProfileModel: freezed == getProfileModel
          ? _value.getProfileModel
          : getProfileModel // ignore: cast_nullable_to_non_nullable
              as GetProfileModel?,
      isTermsAndCondition: null == isTermsAndCondition
          ? _value.isTermsAndCondition
          : isTermsAndCondition // ignore: cast_nullable_to_non_nullable
              as bool,
      termsAndConditionModel: freezed == termsAndConditionModel
          ? _value.termsAndConditionModel
          : termsAndConditionModel // ignore: cast_nullable_to_non_nullable
              as TermsAndConditionModel?,
    ));
  }
}

/// @nodoc

class _$CreateAccountStateImpl implements _CreateAccountState {
  const _$CreateAccountStateImpl(
      {this.passwordHide = false,
      this.isSingnUpApiHit = false,
      this.signUpModel,
      this.isOtpVerify = false,
      this.verifyOtpModel,
      this.isProfileStatus = false,
      this.getProfileModel,
      this.isTermsAndCondition = false,
      this.termsAndConditionModel});

  @override
  @JsonKey()
  final bool passwordHide;
  @override
  @JsonKey()
  final bool isSingnUpApiHit;
  @override
  final SignUpModel? signUpModel;
  @override
  @JsonKey()
  final bool isOtpVerify;
  @override
  final VerifyOtpModel? verifyOtpModel;
  @override
  @JsonKey()
  final bool isProfileStatus;
  @override
  final GetProfileModel? getProfileModel;
  @override
  @JsonKey()
  final bool isTermsAndCondition;
  @override
  final TermsAndConditionModel? termsAndConditionModel;

  @override
  String toString() {
    return 'CreateAccountState(passwordHide: $passwordHide, isSingnUpApiHit: $isSingnUpApiHit, signUpModel: $signUpModel, isOtpVerify: $isOtpVerify, verifyOtpModel: $verifyOtpModel, isProfileStatus: $isProfileStatus, getProfileModel: $getProfileModel, isTermsAndCondition: $isTermsAndCondition, termsAndConditionModel: $termsAndConditionModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountStateImpl &&
            (identical(other.passwordHide, passwordHide) ||
                other.passwordHide == passwordHide) &&
            (identical(other.isSingnUpApiHit, isSingnUpApiHit) ||
                other.isSingnUpApiHit == isSingnUpApiHit) &&
            (identical(other.signUpModel, signUpModel) ||
                other.signUpModel == signUpModel) &&
            (identical(other.isOtpVerify, isOtpVerify) ||
                other.isOtpVerify == isOtpVerify) &&
            (identical(other.verifyOtpModel, verifyOtpModel) ||
                other.verifyOtpModel == verifyOtpModel) &&
            (identical(other.isProfileStatus, isProfileStatus) ||
                other.isProfileStatus == isProfileStatus) &&
            (identical(other.getProfileModel, getProfileModel) ||
                other.getProfileModel == getProfileModel) &&
            (identical(other.isTermsAndCondition, isTermsAndCondition) ||
                other.isTermsAndCondition == isTermsAndCondition) &&
            (identical(other.termsAndConditionModel, termsAndConditionModel) ||
                other.termsAndConditionModel == termsAndConditionModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      passwordHide,
      isSingnUpApiHit,
      signUpModel,
      isOtpVerify,
      verifyOtpModel,
      isProfileStatus,
      getProfileModel,
      isTermsAndCondition,
      termsAndConditionModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAccountStateImplCopyWith<_$CreateAccountStateImpl> get copyWith =>
      __$$CreateAccountStateImplCopyWithImpl<_$CreateAccountStateImpl>(
          this, _$identity);
}

abstract class _CreateAccountState implements CreateAccountState {
  const factory _CreateAccountState(
          {final bool passwordHide,
          final bool isSingnUpApiHit,
          final SignUpModel? signUpModel,
          final bool isOtpVerify,
          final VerifyOtpModel? verifyOtpModel,
          final bool isProfileStatus,
          final GetProfileModel? getProfileModel,
          final bool isTermsAndCondition,
          final TermsAndConditionModel? termsAndConditionModel}) =
      _$CreateAccountStateImpl;

  @override
  bool get passwordHide;
  @override
  bool get isSingnUpApiHit;
  @override
  SignUpModel? get signUpModel;
  @override
  bool get isOtpVerify;
  @override
  VerifyOtpModel? get verifyOtpModel;
  @override
  bool get isProfileStatus;
  @override
  GetProfileModel? get getProfileModel;
  @override
  bool get isTermsAndCondition;
  @override
  TermsAndConditionModel? get termsAndConditionModel;
  @override
  @JsonKey(ignore: true)
  _$$CreateAccountStateImplCopyWith<_$CreateAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
