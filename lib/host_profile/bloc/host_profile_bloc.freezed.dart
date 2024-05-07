// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'host_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HostProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BuildContext context, String hostId)
        getProfileApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BuildContext context, String hostId)? getProfileApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BuildContext context, String hostId)? getProfileApi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProfileApi value) getProfileApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProfileApi value)? getProfileApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProfileApi value)? getProfileApi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostProfileEventCopyWith<$Res> {
  factory $HostProfileEventCopyWith(
          HostProfileEvent value, $Res Function(HostProfileEvent) then) =
      _$HostProfileEventCopyWithImpl<$Res, HostProfileEvent>;
}

/// @nodoc
class _$HostProfileEventCopyWithImpl<$Res, $Val extends HostProfileEvent>
    implements $HostProfileEventCopyWith<$Res> {
  _$HostProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HostProfileEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HostProfileEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BuildContext context, String hostId)
        getProfileApi,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BuildContext context, String hostId)? getProfileApi,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BuildContext context, String hostId)? getProfileApi,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProfileApi value) getProfileApi,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProfileApi value)? getProfileApi,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProfileApi value)? getProfileApi,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HostProfileEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetProfileApiImplCopyWith<$Res> {
  factory _$$GetProfileApiImplCopyWith(
          _$GetProfileApiImpl value, $Res Function(_$GetProfileApiImpl) then) =
      __$$GetProfileApiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String hostId});
}

/// @nodoc
class __$$GetProfileApiImplCopyWithImpl<$Res>
    extends _$HostProfileEventCopyWithImpl<$Res, _$GetProfileApiImpl>
    implements _$$GetProfileApiImplCopyWith<$Res> {
  __$$GetProfileApiImplCopyWithImpl(
      _$GetProfileApiImpl _value, $Res Function(_$GetProfileApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? hostId = null,
  }) {
    return _then(_$GetProfileApiImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      hostId: null == hostId
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProfileApiImpl implements GetProfileApi {
  const _$GetProfileApiImpl({required this.context, required this.hostId});

  @override
  final BuildContext context;
  @override
  final String hostId;

  @override
  String toString() {
    return 'HostProfileEvent.getProfileApi(context: $context, hostId: $hostId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileApiImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.hostId, hostId) || other.hostId == hostId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, hostId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileApiImplCopyWith<_$GetProfileApiImpl> get copyWith =>
      __$$GetProfileApiImplCopyWithImpl<_$GetProfileApiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BuildContext context, String hostId)
        getProfileApi,
  }) {
    return getProfileApi(context, hostId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BuildContext context, String hostId)? getProfileApi,
  }) {
    return getProfileApi?.call(context, hostId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BuildContext context, String hostId)? getProfileApi,
    required TResult orElse(),
  }) {
    if (getProfileApi != null) {
      return getProfileApi(context, hostId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProfileApi value) getProfileApi,
  }) {
    return getProfileApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProfileApi value)? getProfileApi,
  }) {
    return getProfileApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProfileApi value)? getProfileApi,
    required TResult orElse(),
  }) {
    if (getProfileApi != null) {
      return getProfileApi(this);
    }
    return orElse();
  }
}

abstract class GetProfileApi implements HostProfileEvent {
  const factory GetProfileApi(
      {required final BuildContext context,
      required final String hostId}) = _$GetProfileApiImpl;

  BuildContext get context;
  String get hostId;
  @JsonKey(ignore: true)
  _$$GetProfileApiImplCopyWith<_$GetProfileApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HostProfileState {
  HostProfileModel? get hostProfileModel => throw _privateConstructorUsedError;
  bool get isProfile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HostProfileStateCopyWith<HostProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostProfileStateCopyWith<$Res> {
  factory $HostProfileStateCopyWith(
          HostProfileState value, $Res Function(HostProfileState) then) =
      _$HostProfileStateCopyWithImpl<$Res, HostProfileState>;
  @useResult
  $Res call({HostProfileModel? hostProfileModel, bool isProfile});
}

/// @nodoc
class _$HostProfileStateCopyWithImpl<$Res, $Val extends HostProfileState>
    implements $HostProfileStateCopyWith<$Res> {
  _$HostProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostProfileModel = freezed,
    Object? isProfile = null,
  }) {
    return _then(_value.copyWith(
      hostProfileModel: freezed == hostProfileModel
          ? _value.hostProfileModel
          : hostProfileModel // ignore: cast_nullable_to_non_nullable
              as HostProfileModel?,
      isProfile: null == isProfile
          ? _value.isProfile
          : isProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$hostProfileStateImplCopyWith<$Res>
    implements $HostProfileStateCopyWith<$Res> {
  factory _$$hostProfileStateImplCopyWith(_$hostProfileStateImpl value,
          $Res Function(_$hostProfileStateImpl) then) =
      __$$hostProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HostProfileModel? hostProfileModel, bool isProfile});
}

/// @nodoc
class __$$hostProfileStateImplCopyWithImpl<$Res>
    extends _$HostProfileStateCopyWithImpl<$Res, _$hostProfileStateImpl>
    implements _$$hostProfileStateImplCopyWith<$Res> {
  __$$hostProfileStateImplCopyWithImpl(_$hostProfileStateImpl _value,
      $Res Function(_$hostProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostProfileModel = freezed,
    Object? isProfile = null,
  }) {
    return _then(_$hostProfileStateImpl(
      hostProfileModel: freezed == hostProfileModel
          ? _value.hostProfileModel
          : hostProfileModel // ignore: cast_nullable_to_non_nullable
              as HostProfileModel?,
      isProfile: null == isProfile
          ? _value.isProfile
          : isProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$hostProfileStateImpl implements _hostProfileState {
  const _$hostProfileStateImpl({this.hostProfileModel, this.isProfile = false});

  @override
  final HostProfileModel? hostProfileModel;
  @override
  @JsonKey()
  final bool isProfile;

  @override
  String toString() {
    return 'HostProfileState(hostProfileModel: $hostProfileModel, isProfile: $isProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$hostProfileStateImpl &&
            (identical(other.hostProfileModel, hostProfileModel) ||
                other.hostProfileModel == hostProfileModel) &&
            (identical(other.isProfile, isProfile) ||
                other.isProfile == isProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hostProfileModel, isProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$hostProfileStateImplCopyWith<_$hostProfileStateImpl> get copyWith =>
      __$$hostProfileStateImplCopyWithImpl<_$hostProfileStateImpl>(
          this, _$identity);
}

abstract class _hostProfileState implements HostProfileState {
  const factory _hostProfileState(
      {final HostProfileModel? hostProfileModel,
      final bool isProfile}) = _$hostProfileStateImpl;

  @override
  HostProfileModel? get hostProfileModel;
  @override
  bool get isProfile;
  @override
  @JsonKey(ignore: true)
  _$$hostProfileStateImplCopyWith<_$hostProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
