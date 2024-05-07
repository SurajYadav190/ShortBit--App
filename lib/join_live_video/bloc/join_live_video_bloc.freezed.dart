// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_live_video_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JoinLiveVideoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId) joinLiveVideoApi,
    required TResult Function(
            String roomId, RtcEngine engine, BuildContext context)
        leaveLiveVideoApi,
    required TResult Function() getGifts,
    required TResult Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)
        sendGifts,
    required TResult Function() turnIsGiftSendCelebrationFalse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId)? joinLiveVideoApi,
    TResult? Function(String roomId, RtcEngine engine, BuildContext context)?
        leaveLiveVideoApi,
    TResult? Function()? getGifts,
    TResult? Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)?
        sendGifts,
    TResult? Function()? turnIsGiftSendCelebrationFalse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId)? joinLiveVideoApi,
    TResult Function(String roomId, RtcEngine engine, BuildContext context)?
        leaveLiveVideoApi,
    TResult Function()? getGifts,
    TResult Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)?
        sendGifts,
    TResult Function()? turnIsGiftSendCelebrationFalse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinLiveVideoApi value) joinLiveVideoApi,
    required TResult Function(LeaveLiveVideoApi value) leaveLiveVideoApi,
    required TResult Function(GetGifts value) getGifts,
    required TResult Function(SendGifts value) sendGifts,
    required TResult Function(TurnIsGiftSendCelebrationFalse value)
        turnIsGiftSendCelebrationFalse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinLiveVideoApi value)? joinLiveVideoApi,
    TResult? Function(LeaveLiveVideoApi value)? leaveLiveVideoApi,
    TResult? Function(GetGifts value)? getGifts,
    TResult? Function(SendGifts value)? sendGifts,
    TResult? Function(TurnIsGiftSendCelebrationFalse value)?
        turnIsGiftSendCelebrationFalse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinLiveVideoApi value)? joinLiveVideoApi,
    TResult Function(LeaveLiveVideoApi value)? leaveLiveVideoApi,
    TResult Function(GetGifts value)? getGifts,
    TResult Function(SendGifts value)? sendGifts,
    TResult Function(TurnIsGiftSendCelebrationFalse value)?
        turnIsGiftSendCelebrationFalse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinLiveVideoEventCopyWith<$Res> {
  factory $JoinLiveVideoEventCopyWith(
          JoinLiveVideoEvent value, $Res Function(JoinLiveVideoEvent) then) =
      _$JoinLiveVideoEventCopyWithImpl<$Res, JoinLiveVideoEvent>;
}

/// @nodoc
class _$JoinLiveVideoEventCopyWithImpl<$Res, $Val extends JoinLiveVideoEvent>
    implements $JoinLiveVideoEventCopyWith<$Res> {
  _$JoinLiveVideoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$JoinLiveVideoApiImplCopyWith<$Res> {
  factory _$$JoinLiveVideoApiImplCopyWith(_$JoinLiveVideoApiImpl value,
          $Res Function(_$JoinLiveVideoApiImpl) then) =
      __$$JoinLiveVideoApiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId});
}

/// @nodoc
class __$$JoinLiveVideoApiImplCopyWithImpl<$Res>
    extends _$JoinLiveVideoEventCopyWithImpl<$Res, _$JoinLiveVideoApiImpl>
    implements _$$JoinLiveVideoApiImplCopyWith<$Res> {
  __$$JoinLiveVideoApiImplCopyWithImpl(_$JoinLiveVideoApiImpl _value,
      $Res Function(_$JoinLiveVideoApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
  }) {
    return _then(_$JoinLiveVideoApiImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$JoinLiveVideoApiImpl implements JoinLiveVideoApi {
  const _$JoinLiveVideoApiImpl({required this.roomId});

  @override
  final String roomId;

  @override
  String toString() {
    return 'JoinLiveVideoEvent.joinLiveVideoApi(roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinLiveVideoApiImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinLiveVideoApiImplCopyWith<_$JoinLiveVideoApiImpl> get copyWith =>
      __$$JoinLiveVideoApiImplCopyWithImpl<_$JoinLiveVideoApiImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId) joinLiveVideoApi,
    required TResult Function(
            String roomId, RtcEngine engine, BuildContext context)
        leaveLiveVideoApi,
    required TResult Function() getGifts,
    required TResult Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)
        sendGifts,
    required TResult Function() turnIsGiftSendCelebrationFalse,
  }) {
    return joinLiveVideoApi(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId)? joinLiveVideoApi,
    TResult? Function(String roomId, RtcEngine engine, BuildContext context)?
        leaveLiveVideoApi,
    TResult? Function()? getGifts,
    TResult? Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)?
        sendGifts,
    TResult? Function()? turnIsGiftSendCelebrationFalse,
  }) {
    return joinLiveVideoApi?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId)? joinLiveVideoApi,
    TResult Function(String roomId, RtcEngine engine, BuildContext context)?
        leaveLiveVideoApi,
    TResult Function()? getGifts,
    TResult Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)?
        sendGifts,
    TResult Function()? turnIsGiftSendCelebrationFalse,
    required TResult orElse(),
  }) {
    if (joinLiveVideoApi != null) {
      return joinLiveVideoApi(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinLiveVideoApi value) joinLiveVideoApi,
    required TResult Function(LeaveLiveVideoApi value) leaveLiveVideoApi,
    required TResult Function(GetGifts value) getGifts,
    required TResult Function(SendGifts value) sendGifts,
    required TResult Function(TurnIsGiftSendCelebrationFalse value)
        turnIsGiftSendCelebrationFalse,
  }) {
    return joinLiveVideoApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinLiveVideoApi value)? joinLiveVideoApi,
    TResult? Function(LeaveLiveVideoApi value)? leaveLiveVideoApi,
    TResult? Function(GetGifts value)? getGifts,
    TResult? Function(SendGifts value)? sendGifts,
    TResult? Function(TurnIsGiftSendCelebrationFalse value)?
        turnIsGiftSendCelebrationFalse,
  }) {
    return joinLiveVideoApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinLiveVideoApi value)? joinLiveVideoApi,
    TResult Function(LeaveLiveVideoApi value)? leaveLiveVideoApi,
    TResult Function(GetGifts value)? getGifts,
    TResult Function(SendGifts value)? sendGifts,
    TResult Function(TurnIsGiftSendCelebrationFalse value)?
        turnIsGiftSendCelebrationFalse,
    required TResult orElse(),
  }) {
    if (joinLiveVideoApi != null) {
      return joinLiveVideoApi(this);
    }
    return orElse();
  }
}

abstract class JoinLiveVideoApi implements JoinLiveVideoEvent {
  const factory JoinLiveVideoApi({required final String roomId}) =
      _$JoinLiveVideoApiImpl;

  String get roomId;
  @JsonKey(ignore: true)
  _$$JoinLiveVideoApiImplCopyWith<_$JoinLiveVideoApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LeaveLiveVideoApiImplCopyWith<$Res> {
  factory _$$LeaveLiveVideoApiImplCopyWith(_$LeaveLiveVideoApiImpl value,
          $Res Function(_$LeaveLiveVideoApiImpl) then) =
      __$$LeaveLiveVideoApiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId, RtcEngine engine, BuildContext context});
}

/// @nodoc
class __$$LeaveLiveVideoApiImplCopyWithImpl<$Res>
    extends _$JoinLiveVideoEventCopyWithImpl<$Res, _$LeaveLiveVideoApiImpl>
    implements _$$LeaveLiveVideoApiImplCopyWith<$Res> {
  __$$LeaveLiveVideoApiImplCopyWithImpl(_$LeaveLiveVideoApiImpl _value,
      $Res Function(_$LeaveLiveVideoApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? engine = null,
    Object? context = null,
  }) {
    return _then(_$LeaveLiveVideoApiImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      engine: null == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$LeaveLiveVideoApiImpl implements LeaveLiveVideoApi {
  const _$LeaveLiveVideoApiImpl(
      {required this.roomId, required this.engine, required this.context});

  @override
  final String roomId;
  @override
  final RtcEngine engine;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'JoinLiveVideoEvent.leaveLiveVideoApi(roomId: $roomId, engine: $engine, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveLiveVideoApiImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.engine, engine) || other.engine == engine) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId, engine, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveLiveVideoApiImplCopyWith<_$LeaveLiveVideoApiImpl> get copyWith =>
      __$$LeaveLiveVideoApiImplCopyWithImpl<_$LeaveLiveVideoApiImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId) joinLiveVideoApi,
    required TResult Function(
            String roomId, RtcEngine engine, BuildContext context)
        leaveLiveVideoApi,
    required TResult Function() getGifts,
    required TResult Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)
        sendGifts,
    required TResult Function() turnIsGiftSendCelebrationFalse,
  }) {
    return leaveLiveVideoApi(roomId, engine, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId)? joinLiveVideoApi,
    TResult? Function(String roomId, RtcEngine engine, BuildContext context)?
        leaveLiveVideoApi,
    TResult? Function()? getGifts,
    TResult? Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)?
        sendGifts,
    TResult? Function()? turnIsGiftSendCelebrationFalse,
  }) {
    return leaveLiveVideoApi?.call(roomId, engine, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId)? joinLiveVideoApi,
    TResult Function(String roomId, RtcEngine engine, BuildContext context)?
        leaveLiveVideoApi,
    TResult Function()? getGifts,
    TResult Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)?
        sendGifts,
    TResult Function()? turnIsGiftSendCelebrationFalse,
    required TResult orElse(),
  }) {
    if (leaveLiveVideoApi != null) {
      return leaveLiveVideoApi(roomId, engine, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinLiveVideoApi value) joinLiveVideoApi,
    required TResult Function(LeaveLiveVideoApi value) leaveLiveVideoApi,
    required TResult Function(GetGifts value) getGifts,
    required TResult Function(SendGifts value) sendGifts,
    required TResult Function(TurnIsGiftSendCelebrationFalse value)
        turnIsGiftSendCelebrationFalse,
  }) {
    return leaveLiveVideoApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinLiveVideoApi value)? joinLiveVideoApi,
    TResult? Function(LeaveLiveVideoApi value)? leaveLiveVideoApi,
    TResult? Function(GetGifts value)? getGifts,
    TResult? Function(SendGifts value)? sendGifts,
    TResult? Function(TurnIsGiftSendCelebrationFalse value)?
        turnIsGiftSendCelebrationFalse,
  }) {
    return leaveLiveVideoApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinLiveVideoApi value)? joinLiveVideoApi,
    TResult Function(LeaveLiveVideoApi value)? leaveLiveVideoApi,
    TResult Function(GetGifts value)? getGifts,
    TResult Function(SendGifts value)? sendGifts,
    TResult Function(TurnIsGiftSendCelebrationFalse value)?
        turnIsGiftSendCelebrationFalse,
    required TResult orElse(),
  }) {
    if (leaveLiveVideoApi != null) {
      return leaveLiveVideoApi(this);
    }
    return orElse();
  }
}

abstract class LeaveLiveVideoApi implements JoinLiveVideoEvent {
  const factory LeaveLiveVideoApi(
      {required final String roomId,
      required final RtcEngine engine,
      required final BuildContext context}) = _$LeaveLiveVideoApiImpl;

  String get roomId;
  RtcEngine get engine;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$LeaveLiveVideoApiImplCopyWith<_$LeaveLiveVideoApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetGiftsImplCopyWith<$Res> {
  factory _$$GetGiftsImplCopyWith(
          _$GetGiftsImpl value, $Res Function(_$GetGiftsImpl) then) =
      __$$GetGiftsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetGiftsImplCopyWithImpl<$Res>
    extends _$JoinLiveVideoEventCopyWithImpl<$Res, _$GetGiftsImpl>
    implements _$$GetGiftsImplCopyWith<$Res> {
  __$$GetGiftsImplCopyWithImpl(
      _$GetGiftsImpl _value, $Res Function(_$GetGiftsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetGiftsImpl implements GetGifts {
  const _$GetGiftsImpl();

  @override
  String toString() {
    return 'JoinLiveVideoEvent.getGifts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetGiftsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId) joinLiveVideoApi,
    required TResult Function(
            String roomId, RtcEngine engine, BuildContext context)
        leaveLiveVideoApi,
    required TResult Function() getGifts,
    required TResult Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)
        sendGifts,
    required TResult Function() turnIsGiftSendCelebrationFalse,
  }) {
    return getGifts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId)? joinLiveVideoApi,
    TResult? Function(String roomId, RtcEngine engine, BuildContext context)?
        leaveLiveVideoApi,
    TResult? Function()? getGifts,
    TResult? Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)?
        sendGifts,
    TResult? Function()? turnIsGiftSendCelebrationFalse,
  }) {
    return getGifts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId)? joinLiveVideoApi,
    TResult Function(String roomId, RtcEngine engine, BuildContext context)?
        leaveLiveVideoApi,
    TResult Function()? getGifts,
    TResult Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)?
        sendGifts,
    TResult Function()? turnIsGiftSendCelebrationFalse,
    required TResult orElse(),
  }) {
    if (getGifts != null) {
      return getGifts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinLiveVideoApi value) joinLiveVideoApi,
    required TResult Function(LeaveLiveVideoApi value) leaveLiveVideoApi,
    required TResult Function(GetGifts value) getGifts,
    required TResult Function(SendGifts value) sendGifts,
    required TResult Function(TurnIsGiftSendCelebrationFalse value)
        turnIsGiftSendCelebrationFalse,
  }) {
    return getGifts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinLiveVideoApi value)? joinLiveVideoApi,
    TResult? Function(LeaveLiveVideoApi value)? leaveLiveVideoApi,
    TResult? Function(GetGifts value)? getGifts,
    TResult? Function(SendGifts value)? sendGifts,
    TResult? Function(TurnIsGiftSendCelebrationFalse value)?
        turnIsGiftSendCelebrationFalse,
  }) {
    return getGifts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinLiveVideoApi value)? joinLiveVideoApi,
    TResult Function(LeaveLiveVideoApi value)? leaveLiveVideoApi,
    TResult Function(GetGifts value)? getGifts,
    TResult Function(SendGifts value)? sendGifts,
    TResult Function(TurnIsGiftSendCelebrationFalse value)?
        turnIsGiftSendCelebrationFalse,
    required TResult orElse(),
  }) {
    if (getGifts != null) {
      return getGifts(this);
    }
    return orElse();
  }
}

abstract class GetGifts implements JoinLiveVideoEvent {
  const factory GetGifts() = _$GetGiftsImpl;
}

/// @nodoc
abstract class _$$SendGiftsImplCopyWith<$Res> {
  factory _$$SendGiftsImplCopyWith(
          _$SendGiftsImpl value, $Res Function(_$SendGiftsImpl) then) =
      __$$SendGiftsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String to_user_id,
      String room_id,
      String gift_id,
      BuildContext context});
}

/// @nodoc
class __$$SendGiftsImplCopyWithImpl<$Res>
    extends _$JoinLiveVideoEventCopyWithImpl<$Res, _$SendGiftsImpl>
    implements _$$SendGiftsImplCopyWith<$Res> {
  __$$SendGiftsImplCopyWithImpl(
      _$SendGiftsImpl _value, $Res Function(_$SendGiftsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to_user_id = null,
    Object? room_id = null,
    Object? gift_id = null,
    Object? context = null,
  }) {
    return _then(_$SendGiftsImpl(
      to_user_id: null == to_user_id
          ? _value.to_user_id
          : to_user_id // ignore: cast_nullable_to_non_nullable
              as String,
      room_id: null == room_id
          ? _value.room_id
          : room_id // ignore: cast_nullable_to_non_nullable
              as String,
      gift_id: null == gift_id
          ? _value.gift_id
          : gift_id // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SendGiftsImpl implements SendGifts {
  const _$SendGiftsImpl(
      {required this.to_user_id,
      required this.room_id,
      required this.gift_id,
      required this.context});

  @override
  final String to_user_id;
  @override
  final String room_id;
  @override
  final String gift_id;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'JoinLiveVideoEvent.sendGifts(to_user_id: $to_user_id, room_id: $room_id, gift_id: $gift_id, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendGiftsImpl &&
            (identical(other.to_user_id, to_user_id) ||
                other.to_user_id == to_user_id) &&
            (identical(other.room_id, room_id) || other.room_id == room_id) &&
            (identical(other.gift_id, gift_id) || other.gift_id == gift_id) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, to_user_id, room_id, gift_id, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendGiftsImplCopyWith<_$SendGiftsImpl> get copyWith =>
      __$$SendGiftsImplCopyWithImpl<_$SendGiftsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId) joinLiveVideoApi,
    required TResult Function(
            String roomId, RtcEngine engine, BuildContext context)
        leaveLiveVideoApi,
    required TResult Function() getGifts,
    required TResult Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)
        sendGifts,
    required TResult Function() turnIsGiftSendCelebrationFalse,
  }) {
    return sendGifts(to_user_id, room_id, gift_id, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId)? joinLiveVideoApi,
    TResult? Function(String roomId, RtcEngine engine, BuildContext context)?
        leaveLiveVideoApi,
    TResult? Function()? getGifts,
    TResult? Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)?
        sendGifts,
    TResult? Function()? turnIsGiftSendCelebrationFalse,
  }) {
    return sendGifts?.call(to_user_id, room_id, gift_id, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId)? joinLiveVideoApi,
    TResult Function(String roomId, RtcEngine engine, BuildContext context)?
        leaveLiveVideoApi,
    TResult Function()? getGifts,
    TResult Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)?
        sendGifts,
    TResult Function()? turnIsGiftSendCelebrationFalse,
    required TResult orElse(),
  }) {
    if (sendGifts != null) {
      return sendGifts(to_user_id, room_id, gift_id, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinLiveVideoApi value) joinLiveVideoApi,
    required TResult Function(LeaveLiveVideoApi value) leaveLiveVideoApi,
    required TResult Function(GetGifts value) getGifts,
    required TResult Function(SendGifts value) sendGifts,
    required TResult Function(TurnIsGiftSendCelebrationFalse value)
        turnIsGiftSendCelebrationFalse,
  }) {
    return sendGifts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinLiveVideoApi value)? joinLiveVideoApi,
    TResult? Function(LeaveLiveVideoApi value)? leaveLiveVideoApi,
    TResult? Function(GetGifts value)? getGifts,
    TResult? Function(SendGifts value)? sendGifts,
    TResult? Function(TurnIsGiftSendCelebrationFalse value)?
        turnIsGiftSendCelebrationFalse,
  }) {
    return sendGifts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinLiveVideoApi value)? joinLiveVideoApi,
    TResult Function(LeaveLiveVideoApi value)? leaveLiveVideoApi,
    TResult Function(GetGifts value)? getGifts,
    TResult Function(SendGifts value)? sendGifts,
    TResult Function(TurnIsGiftSendCelebrationFalse value)?
        turnIsGiftSendCelebrationFalse,
    required TResult orElse(),
  }) {
    if (sendGifts != null) {
      return sendGifts(this);
    }
    return orElse();
  }
}

abstract class SendGifts implements JoinLiveVideoEvent {
  const factory SendGifts(
      {required final String to_user_id,
      required final String room_id,
      required final String gift_id,
      required final BuildContext context}) = _$SendGiftsImpl;

  String get to_user_id;
  String get room_id;
  String get gift_id;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$SendGiftsImplCopyWith<_$SendGiftsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TurnIsGiftSendCelebrationFalseImplCopyWith<$Res> {
  factory _$$TurnIsGiftSendCelebrationFalseImplCopyWith(
          _$TurnIsGiftSendCelebrationFalseImpl value,
          $Res Function(_$TurnIsGiftSendCelebrationFalseImpl) then) =
      __$$TurnIsGiftSendCelebrationFalseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TurnIsGiftSendCelebrationFalseImplCopyWithImpl<$Res>
    extends _$JoinLiveVideoEventCopyWithImpl<$Res,
        _$TurnIsGiftSendCelebrationFalseImpl>
    implements _$$TurnIsGiftSendCelebrationFalseImplCopyWith<$Res> {
  __$$TurnIsGiftSendCelebrationFalseImplCopyWithImpl(
      _$TurnIsGiftSendCelebrationFalseImpl _value,
      $Res Function(_$TurnIsGiftSendCelebrationFalseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TurnIsGiftSendCelebrationFalseImpl
    implements TurnIsGiftSendCelebrationFalse {
  const _$TurnIsGiftSendCelebrationFalseImpl();

  @override
  String toString() {
    return 'JoinLiveVideoEvent.turnIsGiftSendCelebrationFalse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TurnIsGiftSendCelebrationFalseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId) joinLiveVideoApi,
    required TResult Function(
            String roomId, RtcEngine engine, BuildContext context)
        leaveLiveVideoApi,
    required TResult Function() getGifts,
    required TResult Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)
        sendGifts,
    required TResult Function() turnIsGiftSendCelebrationFalse,
  }) {
    return turnIsGiftSendCelebrationFalse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId)? joinLiveVideoApi,
    TResult? Function(String roomId, RtcEngine engine, BuildContext context)?
        leaveLiveVideoApi,
    TResult? Function()? getGifts,
    TResult? Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)?
        sendGifts,
    TResult? Function()? turnIsGiftSendCelebrationFalse,
  }) {
    return turnIsGiftSendCelebrationFalse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId)? joinLiveVideoApi,
    TResult Function(String roomId, RtcEngine engine, BuildContext context)?
        leaveLiveVideoApi,
    TResult Function()? getGifts,
    TResult Function(String to_user_id, String room_id, String gift_id,
            BuildContext context)?
        sendGifts,
    TResult Function()? turnIsGiftSendCelebrationFalse,
    required TResult orElse(),
  }) {
    if (turnIsGiftSendCelebrationFalse != null) {
      return turnIsGiftSendCelebrationFalse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinLiveVideoApi value) joinLiveVideoApi,
    required TResult Function(LeaveLiveVideoApi value) leaveLiveVideoApi,
    required TResult Function(GetGifts value) getGifts,
    required TResult Function(SendGifts value) sendGifts,
    required TResult Function(TurnIsGiftSendCelebrationFalse value)
        turnIsGiftSendCelebrationFalse,
  }) {
    return turnIsGiftSendCelebrationFalse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinLiveVideoApi value)? joinLiveVideoApi,
    TResult? Function(LeaveLiveVideoApi value)? leaveLiveVideoApi,
    TResult? Function(GetGifts value)? getGifts,
    TResult? Function(SendGifts value)? sendGifts,
    TResult? Function(TurnIsGiftSendCelebrationFalse value)?
        turnIsGiftSendCelebrationFalse,
  }) {
    return turnIsGiftSendCelebrationFalse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinLiveVideoApi value)? joinLiveVideoApi,
    TResult Function(LeaveLiveVideoApi value)? leaveLiveVideoApi,
    TResult Function(GetGifts value)? getGifts,
    TResult Function(SendGifts value)? sendGifts,
    TResult Function(TurnIsGiftSendCelebrationFalse value)?
        turnIsGiftSendCelebrationFalse,
    required TResult orElse(),
  }) {
    if (turnIsGiftSendCelebrationFalse != null) {
      return turnIsGiftSendCelebrationFalse(this);
    }
    return orElse();
  }
}

abstract class TurnIsGiftSendCelebrationFalse implements JoinLiveVideoEvent {
  const factory TurnIsGiftSendCelebrationFalse() =
      _$TurnIsGiftSendCelebrationFalseImpl;
}

/// @nodoc
mixin _$JoinLiveVideoState {
  JoinRoomApi? get joinRoomApi => throw _privateConstructorUsedError;
  Gifts? get gifts => throw _privateConstructorUsedError;
  SendGiftsModel? get sendGiftsModel => throw _privateConstructorUsedError;
  dynamic get isRoomAPILeave => throw _privateConstructorUsedError;
  dynamic get isGiftSendCelebration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JoinLiveVideoStateCopyWith<JoinLiveVideoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinLiveVideoStateCopyWith<$Res> {
  factory $JoinLiveVideoStateCopyWith(
          JoinLiveVideoState value, $Res Function(JoinLiveVideoState) then) =
      _$JoinLiveVideoStateCopyWithImpl<$Res, JoinLiveVideoState>;
  @useResult
  $Res call(
      {JoinRoomApi? joinRoomApi,
      Gifts? gifts,
      SendGiftsModel? sendGiftsModel,
      dynamic isRoomAPILeave,
      dynamic isGiftSendCelebration});
}

/// @nodoc
class _$JoinLiveVideoStateCopyWithImpl<$Res, $Val extends JoinLiveVideoState>
    implements $JoinLiveVideoStateCopyWith<$Res> {
  _$JoinLiveVideoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joinRoomApi = freezed,
    Object? gifts = freezed,
    Object? sendGiftsModel = freezed,
    Object? isRoomAPILeave = freezed,
    Object? isGiftSendCelebration = freezed,
  }) {
    return _then(_value.copyWith(
      joinRoomApi: freezed == joinRoomApi
          ? _value.joinRoomApi
          : joinRoomApi // ignore: cast_nullable_to_non_nullable
              as JoinRoomApi?,
      gifts: freezed == gifts
          ? _value.gifts
          : gifts // ignore: cast_nullable_to_non_nullable
              as Gifts?,
      sendGiftsModel: freezed == sendGiftsModel
          ? _value.sendGiftsModel
          : sendGiftsModel // ignore: cast_nullable_to_non_nullable
              as SendGiftsModel?,
      isRoomAPILeave: freezed == isRoomAPILeave
          ? _value.isRoomAPILeave
          : isRoomAPILeave // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isGiftSendCelebration: freezed == isGiftSendCelebration
          ? _value.isGiftSendCelebration
          : isGiftSendCelebration // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JoinLiveVideoStateImplCopyWith<$Res>
    implements $JoinLiveVideoStateCopyWith<$Res> {
  factory _$$JoinLiveVideoStateImplCopyWith(_$JoinLiveVideoStateImpl value,
          $Res Function(_$JoinLiveVideoStateImpl) then) =
      __$$JoinLiveVideoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {JoinRoomApi? joinRoomApi,
      Gifts? gifts,
      SendGiftsModel? sendGiftsModel,
      dynamic isRoomAPILeave,
      dynamic isGiftSendCelebration});
}

/// @nodoc
class __$$JoinLiveVideoStateImplCopyWithImpl<$Res>
    extends _$JoinLiveVideoStateCopyWithImpl<$Res, _$JoinLiveVideoStateImpl>
    implements _$$JoinLiveVideoStateImplCopyWith<$Res> {
  __$$JoinLiveVideoStateImplCopyWithImpl(_$JoinLiveVideoStateImpl _value,
      $Res Function(_$JoinLiveVideoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joinRoomApi = freezed,
    Object? gifts = freezed,
    Object? sendGiftsModel = freezed,
    Object? isRoomAPILeave = freezed,
    Object? isGiftSendCelebration = freezed,
  }) {
    return _then(_$JoinLiveVideoStateImpl(
      joinRoomApi: freezed == joinRoomApi
          ? _value.joinRoomApi
          : joinRoomApi // ignore: cast_nullable_to_non_nullable
              as JoinRoomApi?,
      gifts: freezed == gifts
          ? _value.gifts
          : gifts // ignore: cast_nullable_to_non_nullable
              as Gifts?,
      sendGiftsModel: freezed == sendGiftsModel
          ? _value.sendGiftsModel
          : sendGiftsModel // ignore: cast_nullable_to_non_nullable
              as SendGiftsModel?,
      isRoomAPILeave:
          freezed == isRoomAPILeave ? _value.isRoomAPILeave! : isRoomAPILeave,
      isGiftSendCelebration: freezed == isGiftSendCelebration
          ? _value.isGiftSendCelebration!
          : isGiftSendCelebration,
    ));
  }
}

/// @nodoc

class _$JoinLiveVideoStateImpl implements _JoinLiveVideoState {
  const _$JoinLiveVideoStateImpl(
      {this.joinRoomApi,
      this.gifts,
      this.sendGiftsModel,
      this.isRoomAPILeave = false,
      this.isGiftSendCelebration = false});

  @override
  final JoinRoomApi? joinRoomApi;
  @override
  final Gifts? gifts;
  @override
  final SendGiftsModel? sendGiftsModel;
  @override
  @JsonKey()
  final dynamic isRoomAPILeave;
  @override
  @JsonKey()
  final dynamic isGiftSendCelebration;

  @override
  String toString() {
    return 'JoinLiveVideoState(joinRoomApi: $joinRoomApi, gifts: $gifts, sendGiftsModel: $sendGiftsModel, isRoomAPILeave: $isRoomAPILeave, isGiftSendCelebration: $isGiftSendCelebration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinLiveVideoStateImpl &&
            (identical(other.joinRoomApi, joinRoomApi) ||
                other.joinRoomApi == joinRoomApi) &&
            (identical(other.gifts, gifts) || other.gifts == gifts) &&
            (identical(other.sendGiftsModel, sendGiftsModel) ||
                other.sendGiftsModel == sendGiftsModel) &&
            const DeepCollectionEquality()
                .equals(other.isRoomAPILeave, isRoomAPILeave) &&
            const DeepCollectionEquality()
                .equals(other.isGiftSendCelebration, isGiftSendCelebration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      joinRoomApi,
      gifts,
      sendGiftsModel,
      const DeepCollectionEquality().hash(isRoomAPILeave),
      const DeepCollectionEquality().hash(isGiftSendCelebration));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinLiveVideoStateImplCopyWith<_$JoinLiveVideoStateImpl> get copyWith =>
      __$$JoinLiveVideoStateImplCopyWithImpl<_$JoinLiveVideoStateImpl>(
          this, _$identity);
}

abstract class _JoinLiveVideoState implements JoinLiveVideoState {
  const factory _JoinLiveVideoState(
      {final JoinRoomApi? joinRoomApi,
      final Gifts? gifts,
      final SendGiftsModel? sendGiftsModel,
      final dynamic isRoomAPILeave,
      final dynamic isGiftSendCelebration}) = _$JoinLiveVideoStateImpl;

  @override
  JoinRoomApi? get joinRoomApi;
  @override
  Gifts? get gifts;
  @override
  SendGiftsModel? get sendGiftsModel;
  @override
  dynamic get isRoomAPILeave;
  @override
  dynamic get isGiftSendCelebration;
  @override
  @JsonKey(ignore: true)
  _$$JoinLiveVideoStateImplCopyWith<_$JoinLiveVideoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
