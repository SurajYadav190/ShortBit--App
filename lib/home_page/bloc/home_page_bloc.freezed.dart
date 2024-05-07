// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allLiveStreemApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allLiveStreemApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allLiveStreemApi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllLiveStreemApi value) allLiveStreemApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllLiveStreemApi value)? allLiveStreemApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllLiveStreemApi value)? allLiveStreemApi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageEventCopyWith<$Res> {
  factory $HomePageEventCopyWith(
          HomePageEvent value, $Res Function(HomePageEvent) then) =
      _$HomePageEventCopyWithImpl<$Res, HomePageEvent>;
}

/// @nodoc
class _$HomePageEventCopyWithImpl<$Res, $Val extends HomePageEvent>
    implements $HomePageEventCopyWith<$Res> {
  _$HomePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AllLiveStreemApiImplCopyWith<$Res> {
  factory _$$AllLiveStreemApiImplCopyWith(_$AllLiveStreemApiImpl value,
          $Res Function(_$AllLiveStreemApiImpl) then) =
      __$$AllLiveStreemApiImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllLiveStreemApiImplCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$AllLiveStreemApiImpl>
    implements _$$AllLiveStreemApiImplCopyWith<$Res> {
  __$$AllLiveStreemApiImplCopyWithImpl(_$AllLiveStreemApiImpl _value,
      $Res Function(_$AllLiveStreemApiImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AllLiveStreemApiImpl implements AllLiveStreemApi {
  const _$AllLiveStreemApiImpl();

  @override
  String toString() {
    return 'HomePageEvent.allLiveStreemApi()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AllLiveStreemApiImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() allLiveStreemApi,
  }) {
    return allLiveStreemApi();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? allLiveStreemApi,
  }) {
    return allLiveStreemApi?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? allLiveStreemApi,
    required TResult orElse(),
  }) {
    if (allLiveStreemApi != null) {
      return allLiveStreemApi();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllLiveStreemApi value) allLiveStreemApi,
  }) {
    return allLiveStreemApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllLiveStreemApi value)? allLiveStreemApi,
  }) {
    return allLiveStreemApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllLiveStreemApi value)? allLiveStreemApi,
    required TResult orElse(),
  }) {
    if (allLiveStreemApi != null) {
      return allLiveStreemApi(this);
    }
    return orElse();
  }
}

abstract class AllLiveStreemApi implements HomePageEvent {
  const factory AllLiveStreemApi() = _$AllLiveStreemApiImpl;
}

/// @nodoc
mixin _$HomePageState {
  GetAllLiveStreemHost? get allLiveStreem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call({GetAllLiveStreemHost? allLiveStreem});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allLiveStreem = freezed,
  }) {
    return _then(_value.copyWith(
      allLiveStreem: freezed == allLiveStreem
          ? _value.allLiveStreem
          : allLiveStreem // ignore: cast_nullable_to_non_nullable
              as GetAllLiveStreemHost?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePageStateImplCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$HomePageStateImplCopyWith(
          _$HomePageStateImpl value, $Res Function(_$HomePageStateImpl) then) =
      __$$HomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetAllLiveStreemHost? allLiveStreem});
}

/// @nodoc
class __$$HomePageStateImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageStateImpl>
    implements _$$HomePageStateImplCopyWith<$Res> {
  __$$HomePageStateImplCopyWithImpl(
      _$HomePageStateImpl _value, $Res Function(_$HomePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allLiveStreem = freezed,
  }) {
    return _then(_$HomePageStateImpl(
      allLiveStreem: freezed == allLiveStreem
          ? _value.allLiveStreem
          : allLiveStreem // ignore: cast_nullable_to_non_nullable
              as GetAllLiveStreemHost?,
    ));
  }
}

/// @nodoc

class _$HomePageStateImpl implements _HomePageState {
  const _$HomePageStateImpl({this.allLiveStreem});

  @override
  final GetAllLiveStreemHost? allLiveStreem;

  @override
  String toString() {
    return 'HomePageState(allLiveStreem: $allLiveStreem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageStateImpl &&
            (identical(other.allLiveStreem, allLiveStreem) ||
                other.allLiveStreem == allLiveStreem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, allLiveStreem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      __$$HomePageStateImplCopyWithImpl<_$HomePageStateImpl>(this, _$identity);
}

abstract class _HomePageState implements HomePageState {
  const factory _HomePageState({final GetAllLiveStreemHost? allLiveStreem}) =
      _$HomePageStateImpl;

  @override
  GetAllLiveStreemHost? get allLiveStreem;
  @override
  @JsonKey(ignore: true)
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
