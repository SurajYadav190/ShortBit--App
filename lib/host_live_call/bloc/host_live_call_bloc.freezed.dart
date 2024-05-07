// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'host_live_call_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HostLiveCallEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) apiCreateLiveRoom,
    required TResult Function(String room_id) apiEndLiveRoom,
    required TResult Function() apiOnGoingLive,
    required TResult Function(String roomId) apiGetLiveRoomData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? apiCreateLiveRoom,
    TResult? Function(String room_id)? apiEndLiveRoom,
    TResult? Function()? apiOnGoingLive,
    TResult? Function(String roomId)? apiGetLiveRoomData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? apiCreateLiveRoom,
    TResult Function(String room_id)? apiEndLiveRoom,
    TResult Function()? apiOnGoingLive,
    TResult Function(String roomId)? apiGetLiveRoomData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiCreateLiveRoom value) apiCreateLiveRoom,
    required TResult Function(ApiEndLiveRoom value) apiEndLiveRoom,
    required TResult Function(ApiOnGoingLive value) apiOnGoingLive,
    required TResult Function(ApiGetLiveRoomData value) apiGetLiveRoomData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiCreateLiveRoom value)? apiCreateLiveRoom,
    TResult? Function(ApiEndLiveRoom value)? apiEndLiveRoom,
    TResult? Function(ApiOnGoingLive value)? apiOnGoingLive,
    TResult? Function(ApiGetLiveRoomData value)? apiGetLiveRoomData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiCreateLiveRoom value)? apiCreateLiveRoom,
    TResult Function(ApiEndLiveRoom value)? apiEndLiveRoom,
    TResult Function(ApiOnGoingLive value)? apiOnGoingLive,
    TResult Function(ApiGetLiveRoomData value)? apiGetLiveRoomData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostLiveCallEventCopyWith<$Res> {
  factory $HostLiveCallEventCopyWith(
          HostLiveCallEvent value, $Res Function(HostLiveCallEvent) then) =
      _$HostLiveCallEventCopyWithImpl<$Res, HostLiveCallEvent>;
}

/// @nodoc
class _$HostLiveCallEventCopyWithImpl<$Res, $Val extends HostLiveCallEvent>
    implements $HostLiveCallEventCopyWith<$Res> {
  _$HostLiveCallEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiCreateLiveRoomImplCopyWith<$Res> {
  factory _$$ApiCreateLiveRoomImplCopyWith(_$ApiCreateLiveRoomImpl value,
          $Res Function(_$ApiCreateLiveRoomImpl) then) =
      __$$ApiCreateLiveRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$ApiCreateLiveRoomImplCopyWithImpl<$Res>
    extends _$HostLiveCallEventCopyWithImpl<$Res, _$ApiCreateLiveRoomImpl>
    implements _$$ApiCreateLiveRoomImplCopyWith<$Res> {
  __$$ApiCreateLiveRoomImplCopyWithImpl(_$ApiCreateLiveRoomImpl _value,
      $Res Function(_$ApiCreateLiveRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$ApiCreateLiveRoomImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ApiCreateLiveRoomImpl implements ApiCreateLiveRoom {
  const _$ApiCreateLiveRoomImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'HostLiveCallEvent.apiCreateLiveRoom(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCreateLiveRoomImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCreateLiveRoomImplCopyWith<_$ApiCreateLiveRoomImpl> get copyWith =>
      __$$ApiCreateLiveRoomImplCopyWithImpl<_$ApiCreateLiveRoomImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) apiCreateLiveRoom,
    required TResult Function(String room_id) apiEndLiveRoom,
    required TResult Function() apiOnGoingLive,
    required TResult Function(String roomId) apiGetLiveRoomData,
  }) {
    return apiCreateLiveRoom(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? apiCreateLiveRoom,
    TResult? Function(String room_id)? apiEndLiveRoom,
    TResult? Function()? apiOnGoingLive,
    TResult? Function(String roomId)? apiGetLiveRoomData,
  }) {
    return apiCreateLiveRoom?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? apiCreateLiveRoom,
    TResult Function(String room_id)? apiEndLiveRoom,
    TResult Function()? apiOnGoingLive,
    TResult Function(String roomId)? apiGetLiveRoomData,
    required TResult orElse(),
  }) {
    if (apiCreateLiveRoom != null) {
      return apiCreateLiveRoom(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiCreateLiveRoom value) apiCreateLiveRoom,
    required TResult Function(ApiEndLiveRoom value) apiEndLiveRoom,
    required TResult Function(ApiOnGoingLive value) apiOnGoingLive,
    required TResult Function(ApiGetLiveRoomData value) apiGetLiveRoomData,
  }) {
    return apiCreateLiveRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiCreateLiveRoom value)? apiCreateLiveRoom,
    TResult? Function(ApiEndLiveRoom value)? apiEndLiveRoom,
    TResult? Function(ApiOnGoingLive value)? apiOnGoingLive,
    TResult? Function(ApiGetLiveRoomData value)? apiGetLiveRoomData,
  }) {
    return apiCreateLiveRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiCreateLiveRoom value)? apiCreateLiveRoom,
    TResult Function(ApiEndLiveRoom value)? apiEndLiveRoom,
    TResult Function(ApiOnGoingLive value)? apiOnGoingLive,
    TResult Function(ApiGetLiveRoomData value)? apiGetLiveRoomData,
    required TResult orElse(),
  }) {
    if (apiCreateLiveRoom != null) {
      return apiCreateLiveRoom(this);
    }
    return orElse();
  }
}

abstract class ApiCreateLiveRoom implements HostLiveCallEvent {
  const factory ApiCreateLiveRoom({required final BuildContext context}) =
      _$ApiCreateLiveRoomImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$ApiCreateLiveRoomImplCopyWith<_$ApiCreateLiveRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiEndLiveRoomImplCopyWith<$Res> {
  factory _$$ApiEndLiveRoomImplCopyWith(_$ApiEndLiveRoomImpl value,
          $Res Function(_$ApiEndLiveRoomImpl) then) =
      __$$ApiEndLiveRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String room_id});
}

/// @nodoc
class __$$ApiEndLiveRoomImplCopyWithImpl<$Res>
    extends _$HostLiveCallEventCopyWithImpl<$Res, _$ApiEndLiveRoomImpl>
    implements _$$ApiEndLiveRoomImplCopyWith<$Res> {
  __$$ApiEndLiveRoomImplCopyWithImpl(
      _$ApiEndLiveRoomImpl _value, $Res Function(_$ApiEndLiveRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room_id = null,
  }) {
    return _then(_$ApiEndLiveRoomImpl(
      room_id: null == room_id
          ? _value.room_id
          : room_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiEndLiveRoomImpl implements ApiEndLiveRoom {
  const _$ApiEndLiveRoomImpl({required this.room_id});

  @override
  final String room_id;

  @override
  String toString() {
    return 'HostLiveCallEvent.apiEndLiveRoom(room_id: $room_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiEndLiveRoomImpl &&
            (identical(other.room_id, room_id) || other.room_id == room_id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiEndLiveRoomImplCopyWith<_$ApiEndLiveRoomImpl> get copyWith =>
      __$$ApiEndLiveRoomImplCopyWithImpl<_$ApiEndLiveRoomImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) apiCreateLiveRoom,
    required TResult Function(String room_id) apiEndLiveRoom,
    required TResult Function() apiOnGoingLive,
    required TResult Function(String roomId) apiGetLiveRoomData,
  }) {
    return apiEndLiveRoom(room_id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? apiCreateLiveRoom,
    TResult? Function(String room_id)? apiEndLiveRoom,
    TResult? Function()? apiOnGoingLive,
    TResult? Function(String roomId)? apiGetLiveRoomData,
  }) {
    return apiEndLiveRoom?.call(room_id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? apiCreateLiveRoom,
    TResult Function(String room_id)? apiEndLiveRoom,
    TResult Function()? apiOnGoingLive,
    TResult Function(String roomId)? apiGetLiveRoomData,
    required TResult orElse(),
  }) {
    if (apiEndLiveRoom != null) {
      return apiEndLiveRoom(room_id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiCreateLiveRoom value) apiCreateLiveRoom,
    required TResult Function(ApiEndLiveRoom value) apiEndLiveRoom,
    required TResult Function(ApiOnGoingLive value) apiOnGoingLive,
    required TResult Function(ApiGetLiveRoomData value) apiGetLiveRoomData,
  }) {
    return apiEndLiveRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiCreateLiveRoom value)? apiCreateLiveRoom,
    TResult? Function(ApiEndLiveRoom value)? apiEndLiveRoom,
    TResult? Function(ApiOnGoingLive value)? apiOnGoingLive,
    TResult? Function(ApiGetLiveRoomData value)? apiGetLiveRoomData,
  }) {
    return apiEndLiveRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiCreateLiveRoom value)? apiCreateLiveRoom,
    TResult Function(ApiEndLiveRoom value)? apiEndLiveRoom,
    TResult Function(ApiOnGoingLive value)? apiOnGoingLive,
    TResult Function(ApiGetLiveRoomData value)? apiGetLiveRoomData,
    required TResult orElse(),
  }) {
    if (apiEndLiveRoom != null) {
      return apiEndLiveRoom(this);
    }
    return orElse();
  }
}

abstract class ApiEndLiveRoom implements HostLiveCallEvent {
  const factory ApiEndLiveRoom({required final String room_id}) =
      _$ApiEndLiveRoomImpl;

  String get room_id;
  @JsonKey(ignore: true)
  _$$ApiEndLiveRoomImplCopyWith<_$ApiEndLiveRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiOnGoingLiveImplCopyWith<$Res> {
  factory _$$ApiOnGoingLiveImplCopyWith(_$ApiOnGoingLiveImpl value,
          $Res Function(_$ApiOnGoingLiveImpl) then) =
      __$$ApiOnGoingLiveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApiOnGoingLiveImplCopyWithImpl<$Res>
    extends _$HostLiveCallEventCopyWithImpl<$Res, _$ApiOnGoingLiveImpl>
    implements _$$ApiOnGoingLiveImplCopyWith<$Res> {
  __$$ApiOnGoingLiveImplCopyWithImpl(
      _$ApiOnGoingLiveImpl _value, $Res Function(_$ApiOnGoingLiveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApiOnGoingLiveImpl implements ApiOnGoingLive {
  const _$ApiOnGoingLiveImpl();

  @override
  String toString() {
    return 'HostLiveCallEvent.apiOnGoingLive()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApiOnGoingLiveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) apiCreateLiveRoom,
    required TResult Function(String room_id) apiEndLiveRoom,
    required TResult Function() apiOnGoingLive,
    required TResult Function(String roomId) apiGetLiveRoomData,
  }) {
    return apiOnGoingLive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? apiCreateLiveRoom,
    TResult? Function(String room_id)? apiEndLiveRoom,
    TResult? Function()? apiOnGoingLive,
    TResult? Function(String roomId)? apiGetLiveRoomData,
  }) {
    return apiOnGoingLive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? apiCreateLiveRoom,
    TResult Function(String room_id)? apiEndLiveRoom,
    TResult Function()? apiOnGoingLive,
    TResult Function(String roomId)? apiGetLiveRoomData,
    required TResult orElse(),
  }) {
    if (apiOnGoingLive != null) {
      return apiOnGoingLive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiCreateLiveRoom value) apiCreateLiveRoom,
    required TResult Function(ApiEndLiveRoom value) apiEndLiveRoom,
    required TResult Function(ApiOnGoingLive value) apiOnGoingLive,
    required TResult Function(ApiGetLiveRoomData value) apiGetLiveRoomData,
  }) {
    return apiOnGoingLive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiCreateLiveRoom value)? apiCreateLiveRoom,
    TResult? Function(ApiEndLiveRoom value)? apiEndLiveRoom,
    TResult? Function(ApiOnGoingLive value)? apiOnGoingLive,
    TResult? Function(ApiGetLiveRoomData value)? apiGetLiveRoomData,
  }) {
    return apiOnGoingLive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiCreateLiveRoom value)? apiCreateLiveRoom,
    TResult Function(ApiEndLiveRoom value)? apiEndLiveRoom,
    TResult Function(ApiOnGoingLive value)? apiOnGoingLive,
    TResult Function(ApiGetLiveRoomData value)? apiGetLiveRoomData,
    required TResult orElse(),
  }) {
    if (apiOnGoingLive != null) {
      return apiOnGoingLive(this);
    }
    return orElse();
  }
}

abstract class ApiOnGoingLive implements HostLiveCallEvent {
  const factory ApiOnGoingLive() = _$ApiOnGoingLiveImpl;
}

/// @nodoc
abstract class _$$ApiGetLiveRoomDataImplCopyWith<$Res> {
  factory _$$ApiGetLiveRoomDataImplCopyWith(_$ApiGetLiveRoomDataImpl value,
          $Res Function(_$ApiGetLiveRoomDataImpl) then) =
      __$$ApiGetLiveRoomDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId});
}

/// @nodoc
class __$$ApiGetLiveRoomDataImplCopyWithImpl<$Res>
    extends _$HostLiveCallEventCopyWithImpl<$Res, _$ApiGetLiveRoomDataImpl>
    implements _$$ApiGetLiveRoomDataImplCopyWith<$Res> {
  __$$ApiGetLiveRoomDataImplCopyWithImpl(_$ApiGetLiveRoomDataImpl _value,
      $Res Function(_$ApiGetLiveRoomDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
  }) {
    return _then(_$ApiGetLiveRoomDataImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiGetLiveRoomDataImpl implements ApiGetLiveRoomData {
  const _$ApiGetLiveRoomDataImpl({required this.roomId});

  @override
  final String roomId;

  @override
  String toString() {
    return 'HostLiveCallEvent.apiGetLiveRoomData(roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiGetLiveRoomDataImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiGetLiveRoomDataImplCopyWith<_$ApiGetLiveRoomDataImpl> get copyWith =>
      __$$ApiGetLiveRoomDataImplCopyWithImpl<_$ApiGetLiveRoomDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) apiCreateLiveRoom,
    required TResult Function(String room_id) apiEndLiveRoom,
    required TResult Function() apiOnGoingLive,
    required TResult Function(String roomId) apiGetLiveRoomData,
  }) {
    return apiGetLiveRoomData(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? apiCreateLiveRoom,
    TResult? Function(String room_id)? apiEndLiveRoom,
    TResult? Function()? apiOnGoingLive,
    TResult? Function(String roomId)? apiGetLiveRoomData,
  }) {
    return apiGetLiveRoomData?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? apiCreateLiveRoom,
    TResult Function(String room_id)? apiEndLiveRoom,
    TResult Function()? apiOnGoingLive,
    TResult Function(String roomId)? apiGetLiveRoomData,
    required TResult orElse(),
  }) {
    if (apiGetLiveRoomData != null) {
      return apiGetLiveRoomData(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiCreateLiveRoom value) apiCreateLiveRoom,
    required TResult Function(ApiEndLiveRoom value) apiEndLiveRoom,
    required TResult Function(ApiOnGoingLive value) apiOnGoingLive,
    required TResult Function(ApiGetLiveRoomData value) apiGetLiveRoomData,
  }) {
    return apiGetLiveRoomData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiCreateLiveRoom value)? apiCreateLiveRoom,
    TResult? Function(ApiEndLiveRoom value)? apiEndLiveRoom,
    TResult? Function(ApiOnGoingLive value)? apiOnGoingLive,
    TResult? Function(ApiGetLiveRoomData value)? apiGetLiveRoomData,
  }) {
    return apiGetLiveRoomData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiCreateLiveRoom value)? apiCreateLiveRoom,
    TResult Function(ApiEndLiveRoom value)? apiEndLiveRoom,
    TResult Function(ApiOnGoingLive value)? apiOnGoingLive,
    TResult Function(ApiGetLiveRoomData value)? apiGetLiveRoomData,
    required TResult orElse(),
  }) {
    if (apiGetLiveRoomData != null) {
      return apiGetLiveRoomData(this);
    }
    return orElse();
  }
}

abstract class ApiGetLiveRoomData implements HostLiveCallEvent {
  const factory ApiGetLiveRoomData({required final String roomId}) =
      _$ApiGetLiveRoomDataImpl;

  String get roomId;
  @JsonKey(ignore: true)
  _$$ApiGetLiveRoomDataImplCopyWith<_$ApiGetLiveRoomDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HostLiveCallState {
  EndLiveRoom? get endLiveRoom => throw _privateConstructorUsedError;
  CreateLiveRoom? get createLiveRoom => throw _privateConstructorUsedError;
  OnGoingLiveRoom? get onGoingLiveRoom => throw _privateConstructorUsedError;
  GetLiveRoomData? get getLiveRoomData => throw _privateConstructorUsedError;
  dynamic get hasRoomId => throw _privateConstructorUsedError;
  dynamic get isOnGoingLiveStreem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HostLiveCallStateCopyWith<HostLiveCallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostLiveCallStateCopyWith<$Res> {
  factory $HostLiveCallStateCopyWith(
          HostLiveCallState value, $Res Function(HostLiveCallState) then) =
      _$HostLiveCallStateCopyWithImpl<$Res, HostLiveCallState>;
  @useResult
  $Res call(
      {EndLiveRoom? endLiveRoom,
      CreateLiveRoom? createLiveRoom,
      OnGoingLiveRoom? onGoingLiveRoom,
      GetLiveRoomData? getLiveRoomData,
      dynamic hasRoomId,
      dynamic isOnGoingLiveStreem});
}

/// @nodoc
class _$HostLiveCallStateCopyWithImpl<$Res, $Val extends HostLiveCallState>
    implements $HostLiveCallStateCopyWith<$Res> {
  _$HostLiveCallStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endLiveRoom = freezed,
    Object? createLiveRoom = freezed,
    Object? onGoingLiveRoom = freezed,
    Object? getLiveRoomData = freezed,
    Object? hasRoomId = freezed,
    Object? isOnGoingLiveStreem = freezed,
  }) {
    return _then(_value.copyWith(
      endLiveRoom: freezed == endLiveRoom
          ? _value.endLiveRoom
          : endLiveRoom // ignore: cast_nullable_to_non_nullable
              as EndLiveRoom?,
      createLiveRoom: freezed == createLiveRoom
          ? _value.createLiveRoom
          : createLiveRoom // ignore: cast_nullable_to_non_nullable
              as CreateLiveRoom?,
      onGoingLiveRoom: freezed == onGoingLiveRoom
          ? _value.onGoingLiveRoom
          : onGoingLiveRoom // ignore: cast_nullable_to_non_nullable
              as OnGoingLiveRoom?,
      getLiveRoomData: freezed == getLiveRoomData
          ? _value.getLiveRoomData
          : getLiveRoomData // ignore: cast_nullable_to_non_nullable
              as GetLiveRoomData?,
      hasRoomId: freezed == hasRoomId
          ? _value.hasRoomId
          : hasRoomId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isOnGoingLiveStreem: freezed == isOnGoingLiveStreem
          ? _value.isOnGoingLiveStreem
          : isOnGoingLiveStreem // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HostLiveCallStateImplCopyWith<$Res>
    implements $HostLiveCallStateCopyWith<$Res> {
  factory _$$HostLiveCallStateImplCopyWith(_$HostLiveCallStateImpl value,
          $Res Function(_$HostLiveCallStateImpl) then) =
      __$$HostLiveCallStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EndLiveRoom? endLiveRoom,
      CreateLiveRoom? createLiveRoom,
      OnGoingLiveRoom? onGoingLiveRoom,
      GetLiveRoomData? getLiveRoomData,
      dynamic hasRoomId,
      dynamic isOnGoingLiveStreem});
}

/// @nodoc
class __$$HostLiveCallStateImplCopyWithImpl<$Res>
    extends _$HostLiveCallStateCopyWithImpl<$Res, _$HostLiveCallStateImpl>
    implements _$$HostLiveCallStateImplCopyWith<$Res> {
  __$$HostLiveCallStateImplCopyWithImpl(_$HostLiveCallStateImpl _value,
      $Res Function(_$HostLiveCallStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endLiveRoom = freezed,
    Object? createLiveRoom = freezed,
    Object? onGoingLiveRoom = freezed,
    Object? getLiveRoomData = freezed,
    Object? hasRoomId = freezed,
    Object? isOnGoingLiveStreem = freezed,
  }) {
    return _then(_$HostLiveCallStateImpl(
      endLiveRoom: freezed == endLiveRoom
          ? _value.endLiveRoom
          : endLiveRoom // ignore: cast_nullable_to_non_nullable
              as EndLiveRoom?,
      createLiveRoom: freezed == createLiveRoom
          ? _value.createLiveRoom
          : createLiveRoom // ignore: cast_nullable_to_non_nullable
              as CreateLiveRoom?,
      onGoingLiveRoom: freezed == onGoingLiveRoom
          ? _value.onGoingLiveRoom
          : onGoingLiveRoom // ignore: cast_nullable_to_non_nullable
              as OnGoingLiveRoom?,
      getLiveRoomData: freezed == getLiveRoomData
          ? _value.getLiveRoomData
          : getLiveRoomData // ignore: cast_nullable_to_non_nullable
              as GetLiveRoomData?,
      hasRoomId: freezed == hasRoomId ? _value.hasRoomId! : hasRoomId,
      isOnGoingLiveStreem: freezed == isOnGoingLiveStreem
          ? _value.isOnGoingLiveStreem!
          : isOnGoingLiveStreem,
    ));
  }
}

/// @nodoc

class _$HostLiveCallStateImpl implements _HostLiveCallState {
  const _$HostLiveCallStateImpl(
      {this.endLiveRoom,
      this.createLiveRoom,
      this.onGoingLiveRoom,
      this.getLiveRoomData,
      this.hasRoomId = false,
      this.isOnGoingLiveStreem = false});

  @override
  final EndLiveRoom? endLiveRoom;
  @override
  final CreateLiveRoom? createLiveRoom;
  @override
  final OnGoingLiveRoom? onGoingLiveRoom;
  @override
  final GetLiveRoomData? getLiveRoomData;
  @override
  @JsonKey()
  final dynamic hasRoomId;
  @override
  @JsonKey()
  final dynamic isOnGoingLiveStreem;

  @override
  String toString() {
    return 'HostLiveCallState(endLiveRoom: $endLiveRoom, createLiveRoom: $createLiveRoom, onGoingLiveRoom: $onGoingLiveRoom, getLiveRoomData: $getLiveRoomData, hasRoomId: $hasRoomId, isOnGoingLiveStreem: $isOnGoingLiveStreem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HostLiveCallStateImpl &&
            (identical(other.endLiveRoom, endLiveRoom) ||
                other.endLiveRoom == endLiveRoom) &&
            (identical(other.createLiveRoom, createLiveRoom) ||
                other.createLiveRoom == createLiveRoom) &&
            (identical(other.onGoingLiveRoom, onGoingLiveRoom) ||
                other.onGoingLiveRoom == onGoingLiveRoom) &&
            (identical(other.getLiveRoomData, getLiveRoomData) ||
                other.getLiveRoomData == getLiveRoomData) &&
            const DeepCollectionEquality().equals(other.hasRoomId, hasRoomId) &&
            const DeepCollectionEquality()
                .equals(other.isOnGoingLiveStreem, isOnGoingLiveStreem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      endLiveRoom,
      createLiveRoom,
      onGoingLiveRoom,
      getLiveRoomData,
      const DeepCollectionEquality().hash(hasRoomId),
      const DeepCollectionEquality().hash(isOnGoingLiveStreem));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HostLiveCallStateImplCopyWith<_$HostLiveCallStateImpl> get copyWith =>
      __$$HostLiveCallStateImplCopyWithImpl<_$HostLiveCallStateImpl>(
          this, _$identity);
}

abstract class _HostLiveCallState implements HostLiveCallState {
  const factory _HostLiveCallState(
      {final EndLiveRoom? endLiveRoom,
      final CreateLiveRoom? createLiveRoom,
      final OnGoingLiveRoom? onGoingLiveRoom,
      final GetLiveRoomData? getLiveRoomData,
      final dynamic hasRoomId,
      final dynamic isOnGoingLiveStreem}) = _$HostLiveCallStateImpl;

  @override
  EndLiveRoom? get endLiveRoom;
  @override
  CreateLiveRoom? get createLiveRoom;
  @override
  OnGoingLiveRoom? get onGoingLiveRoom;
  @override
  GetLiveRoomData? get getLiveRoomData;
  @override
  dynamic get hasRoomId;
  @override
  dynamic get isOnGoingLiveStreem;
  @override
  @JsonKey(ignore: true)
  _$$HostLiveCallStateImplCopyWith<_$HostLiveCallStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
