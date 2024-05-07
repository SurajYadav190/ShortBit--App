// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updateprofile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateprofileEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, Map<String, String> data)
        updateProfileApi,
    required TResult Function(BuildContext context, File profileImage)
        uploadProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, Map<String, String> data)?
        updateProfileApi,
    TResult? Function(BuildContext context, File profileImage)?
        uploadProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, Map<String, String> data)?
        updateProfileApi,
    TResult Function(BuildContext context, File profileImage)?
        uploadProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfileApi value) updateProfileApi,
    required TResult Function(UploadProfileImage value) uploadProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfileApi value)? updateProfileApi,
    TResult? Function(UploadProfileImage value)? uploadProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileApi value)? updateProfileApi,
    TResult Function(UploadProfileImage value)? uploadProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateprofileEventCopyWith<UpdateprofileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateprofileEventCopyWith<$Res> {
  factory $UpdateprofileEventCopyWith(
          UpdateprofileEvent value, $Res Function(UpdateprofileEvent) then) =
      _$UpdateprofileEventCopyWithImpl<$Res, UpdateprofileEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$UpdateprofileEventCopyWithImpl<$Res, $Val extends UpdateprofileEvent>
    implements $UpdateprofileEventCopyWith<$Res> {
  _$UpdateprofileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileApiImplCopyWith<$Res>
    implements $UpdateprofileEventCopyWith<$Res> {
  factory _$$UpdateProfileApiImplCopyWith(_$UpdateProfileApiImpl value,
          $Res Function(_$UpdateProfileApiImpl) then) =
      __$$UpdateProfileApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, Map<String, String> data});
}

/// @nodoc
class __$$UpdateProfileApiImplCopyWithImpl<$Res>
    extends _$UpdateprofileEventCopyWithImpl<$Res, _$UpdateProfileApiImpl>
    implements _$$UpdateProfileApiImplCopyWith<$Res> {
  __$$UpdateProfileApiImplCopyWithImpl(_$UpdateProfileApiImpl _value,
      $Res Function(_$UpdateProfileApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? data = null,
  }) {
    return _then(_$UpdateProfileApiImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$UpdateProfileApiImpl implements UpdateProfileApi {
  const _$UpdateProfileApiImpl(
      {required this.context, required final Map<String, String> data})
      : _data = data;

  @override
  final BuildContext context;
  final Map<String, String> _data;
  @override
  Map<String, String> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'UpdateprofileEvent.updateProfileApi(context: $context, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileApiImpl &&
            (identical(other.context, context) || other.context == context) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, context, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileApiImplCopyWith<_$UpdateProfileApiImpl> get copyWith =>
      __$$UpdateProfileApiImplCopyWithImpl<_$UpdateProfileApiImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, Map<String, String> data)
        updateProfileApi,
    required TResult Function(BuildContext context, File profileImage)
        uploadProfileImage,
  }) {
    return updateProfileApi(context, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, Map<String, String> data)?
        updateProfileApi,
    TResult? Function(BuildContext context, File profileImage)?
        uploadProfileImage,
  }) {
    return updateProfileApi?.call(context, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, Map<String, String> data)?
        updateProfileApi,
    TResult Function(BuildContext context, File profileImage)?
        uploadProfileImage,
    required TResult orElse(),
  }) {
    if (updateProfileApi != null) {
      return updateProfileApi(context, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfileApi value) updateProfileApi,
    required TResult Function(UploadProfileImage value) uploadProfileImage,
  }) {
    return updateProfileApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfileApi value)? updateProfileApi,
    TResult? Function(UploadProfileImage value)? uploadProfileImage,
  }) {
    return updateProfileApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileApi value)? updateProfileApi,
    TResult Function(UploadProfileImage value)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (updateProfileApi != null) {
      return updateProfileApi(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileApi implements UpdateprofileEvent {
  const factory UpdateProfileApi(
      {required final BuildContext context,
      required final Map<String, String> data}) = _$UpdateProfileApiImpl;

  @override
  BuildContext get context;
  Map<String, String> get data;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProfileApiImplCopyWith<_$UpdateProfileApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadProfileImageImplCopyWith<$Res>
    implements $UpdateprofileEventCopyWith<$Res> {
  factory _$$UploadProfileImageImplCopyWith(_$UploadProfileImageImpl value,
          $Res Function(_$UploadProfileImageImpl) then) =
      __$$UploadProfileImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, File profileImage});
}

/// @nodoc
class __$$UploadProfileImageImplCopyWithImpl<$Res>
    extends _$UpdateprofileEventCopyWithImpl<$Res, _$UploadProfileImageImpl>
    implements _$$UploadProfileImageImplCopyWith<$Res> {
  __$$UploadProfileImageImplCopyWithImpl(_$UploadProfileImageImpl _value,
      $Res Function(_$UploadProfileImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? profileImage = null,
  }) {
    return _then(_$UploadProfileImageImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$UploadProfileImageImpl implements UploadProfileImage {
  const _$UploadProfileImageImpl(
      {required this.context, required this.profileImage});

  @override
  final BuildContext context;
  @override
  final File profileImage;

  @override
  String toString() {
    return 'UpdateprofileEvent.uploadProfileImage(context: $context, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadProfileImageImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadProfileImageImplCopyWith<_$UploadProfileImageImpl> get copyWith =>
      __$$UploadProfileImageImplCopyWithImpl<_$UploadProfileImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, Map<String, String> data)
        updateProfileApi,
    required TResult Function(BuildContext context, File profileImage)
        uploadProfileImage,
  }) {
    return uploadProfileImage(context, profileImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, Map<String, String> data)?
        updateProfileApi,
    TResult? Function(BuildContext context, File profileImage)?
        uploadProfileImage,
  }) {
    return uploadProfileImage?.call(context, profileImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, Map<String, String> data)?
        updateProfileApi,
    TResult Function(BuildContext context, File profileImage)?
        uploadProfileImage,
    required TResult orElse(),
  }) {
    if (uploadProfileImage != null) {
      return uploadProfileImage(context, profileImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfileApi value) updateProfileApi,
    required TResult Function(UploadProfileImage value) uploadProfileImage,
  }) {
    return uploadProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfileApi value)? updateProfileApi,
    TResult? Function(UploadProfileImage value)? uploadProfileImage,
  }) {
    return uploadProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileApi value)? updateProfileApi,
    TResult Function(UploadProfileImage value)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (uploadProfileImage != null) {
      return uploadProfileImage(this);
    }
    return orElse();
  }
}

abstract class UploadProfileImage implements UpdateprofileEvent {
  const factory UploadProfileImage(
      {required final BuildContext context,
      required final File profileImage}) = _$UploadProfileImageImpl;

  @override
  BuildContext get context;
  File get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$UploadProfileImageImplCopyWith<_$UploadProfileImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateprofileState {}

/// @nodoc
abstract class $UpdateprofileStateCopyWith<$Res> {
  factory $UpdateprofileStateCopyWith(
          UpdateprofileState value, $Res Function(UpdateprofileState) then) =
      _$UpdateprofileStateCopyWithImpl<$Res, UpdateprofileState>;
}

/// @nodoc
class _$UpdateprofileStateCopyWithImpl<$Res, $Val extends UpdateprofileState>
    implements $UpdateprofileStateCopyWith<$Res> {
  _$UpdateprofileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateprofileStateImplCopyWith<$Res> {
  factory _$$UpdateprofileStateImplCopyWith(_$UpdateprofileStateImpl value,
          $Res Function(_$UpdateprofileStateImpl) then) =
      __$$UpdateprofileStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateprofileStateImplCopyWithImpl<$Res>
    extends _$UpdateprofileStateCopyWithImpl<$Res, _$UpdateprofileStateImpl>
    implements _$$UpdateprofileStateImplCopyWith<$Res> {
  __$$UpdateprofileStateImplCopyWithImpl(_$UpdateprofileStateImpl _value,
      $Res Function(_$UpdateprofileStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateprofileStateImpl implements _UpdateprofileState {
  const _$UpdateprofileStateImpl();

  @override
  String toString() {
    return 'UpdateprofileState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateprofileStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _UpdateprofileState implements UpdateprofileState {
  const factory _UpdateprofileState() = _$UpdateprofileStateImpl;
}
