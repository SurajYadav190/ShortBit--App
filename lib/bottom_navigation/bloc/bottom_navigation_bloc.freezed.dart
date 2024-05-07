// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomNavigationEvent {
  int get tappedIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tappedIndex) navBarTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tappedIndex)? navBarTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tappedIndex)? navBarTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavBarTapped value) navBarTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavBarTapped value)? navBarTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavBarTapped value)? navBarTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavigationEventCopyWith<BottomNavigationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationEventCopyWith<$Res> {
  factory $BottomNavigationEventCopyWith(BottomNavigationEvent value,
          $Res Function(BottomNavigationEvent) then) =
      _$BottomNavigationEventCopyWithImpl<$Res, BottomNavigationEvent>;
  @useResult
  $Res call({int tappedIndex});
}

/// @nodoc
class _$BottomNavigationEventCopyWithImpl<$Res,
        $Val extends BottomNavigationEvent>
    implements $BottomNavigationEventCopyWith<$Res> {
  _$BottomNavigationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tappedIndex = null,
  }) {
    return _then(_value.copyWith(
      tappedIndex: null == tappedIndex
          ? _value.tappedIndex
          : tappedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavBarTappedImplCopyWith<$Res>
    implements $BottomNavigationEventCopyWith<$Res> {
  factory _$$NavBarTappedImplCopyWith(
          _$NavBarTappedImpl value, $Res Function(_$NavBarTappedImpl) then) =
      __$$NavBarTappedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tappedIndex});
}

/// @nodoc
class __$$NavBarTappedImplCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res, _$NavBarTappedImpl>
    implements _$$NavBarTappedImplCopyWith<$Res> {
  __$$NavBarTappedImplCopyWithImpl(
      _$NavBarTappedImpl _value, $Res Function(_$NavBarTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tappedIndex = null,
  }) {
    return _then(_$NavBarTappedImpl(
      tappedIndex: null == tappedIndex
          ? _value.tappedIndex
          : tappedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NavBarTappedImpl implements NavBarTapped {
  const _$NavBarTappedImpl({required this.tappedIndex});

  @override
  final int tappedIndex;

  @override
  String toString() {
    return 'BottomNavigationEvent.navBarTapped(tappedIndex: $tappedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavBarTappedImpl &&
            (identical(other.tappedIndex, tappedIndex) ||
                other.tappedIndex == tappedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tappedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavBarTappedImplCopyWith<_$NavBarTappedImpl> get copyWith =>
      __$$NavBarTappedImplCopyWithImpl<_$NavBarTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tappedIndex) navBarTapped,
  }) {
    return navBarTapped(tappedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tappedIndex)? navBarTapped,
  }) {
    return navBarTapped?.call(tappedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tappedIndex)? navBarTapped,
    required TResult orElse(),
  }) {
    if (navBarTapped != null) {
      return navBarTapped(tappedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavBarTapped value) navBarTapped,
  }) {
    return navBarTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavBarTapped value)? navBarTapped,
  }) {
    return navBarTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavBarTapped value)? navBarTapped,
    required TResult orElse(),
  }) {
    if (navBarTapped != null) {
      return navBarTapped(this);
    }
    return orElse();
  }
}

abstract class NavBarTapped implements BottomNavigationEvent {
  const factory NavBarTapped({required final int tappedIndex}) =
      _$NavBarTappedImpl;

  @override
  int get tappedIndex;
  @override
  @JsonKey(ignore: true)
  _$$NavBarTappedImplCopyWith<_$NavBarTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BottomNavigationState {
  int get currentBottomIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavigationStateCopyWith<BottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res, BottomNavigationState>;
  @useResult
  $Res call({int currentBottomIndex});
}

/// @nodoc
class _$BottomNavigationStateCopyWithImpl<$Res,
        $Val extends BottomNavigationState>
    implements $BottomNavigationStateCopyWith<$Res> {
  _$BottomNavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentBottomIndex = null,
  }) {
    return _then(_value.copyWith(
      currentBottomIndex: null == currentBottomIndex
          ? _value.currentBottomIndex
          : currentBottomIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BottomNavigationStateImplCopyWith<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  factory _$$BottomNavigationStateImplCopyWith(
          _$BottomNavigationStateImpl value,
          $Res Function(_$BottomNavigationStateImpl) then) =
      __$$BottomNavigationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentBottomIndex});
}

/// @nodoc
class __$$BottomNavigationStateImplCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res,
        _$BottomNavigationStateImpl>
    implements _$$BottomNavigationStateImplCopyWith<$Res> {
  __$$BottomNavigationStateImplCopyWithImpl(_$BottomNavigationStateImpl _value,
      $Res Function(_$BottomNavigationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentBottomIndex = null,
  }) {
    return _then(_$BottomNavigationStateImpl(
      currentBottomIndex: null == currentBottomIndex
          ? _value.currentBottomIndex
          : currentBottomIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BottomNavigationStateImpl implements _BottomNavigationState {
  const _$BottomNavigationStateImpl({this.currentBottomIndex = 0});

  @override
  @JsonKey()
  final int currentBottomIndex;

  @override
  String toString() {
    return 'BottomNavigationState(currentBottomIndex: $currentBottomIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNavigationStateImpl &&
            (identical(other.currentBottomIndex, currentBottomIndex) ||
                other.currentBottomIndex == currentBottomIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentBottomIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomNavigationStateImplCopyWith<_$BottomNavigationStateImpl>
      get copyWith => __$$BottomNavigationStateImplCopyWithImpl<
          _$BottomNavigationStateImpl>(this, _$identity);
}

abstract class _BottomNavigationState implements BottomNavigationState {
  const factory _BottomNavigationState({final int currentBottomIndex}) =
      _$BottomNavigationStateImpl;

  @override
  int get currentBottomIndex;
  @override
  @JsonKey(ignore: true)
  _$$BottomNavigationStateImplCopyWith<_$BottomNavigationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
