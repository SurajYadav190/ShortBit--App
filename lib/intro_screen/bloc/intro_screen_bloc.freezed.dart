// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intro_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IntroScreenEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) onIndexChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? onIndexChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? onIndexChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnIndexChange value) onIndexChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnIndexChange value)? onIndexChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnIndexChange value)? onIndexChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IntroScreenEventCopyWith<IntroScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroScreenEventCopyWith<$Res> {
  factory $IntroScreenEventCopyWith(
          IntroScreenEvent value, $Res Function(IntroScreenEvent) then) =
      _$IntroScreenEventCopyWithImpl<$Res, IntroScreenEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$IntroScreenEventCopyWithImpl<$Res, $Val extends IntroScreenEvent>
    implements $IntroScreenEventCopyWith<$Res> {
  _$IntroScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnIndexChangeImplCopyWith<$Res>
    implements $IntroScreenEventCopyWith<$Res> {
  factory _$$OnIndexChangeImplCopyWith(
          _$OnIndexChangeImpl value, $Res Function(_$OnIndexChangeImpl) then) =
      __$$OnIndexChangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$OnIndexChangeImplCopyWithImpl<$Res>
    extends _$IntroScreenEventCopyWithImpl<$Res, _$OnIndexChangeImpl>
    implements _$$OnIndexChangeImplCopyWith<$Res> {
  __$$OnIndexChangeImplCopyWithImpl(
      _$OnIndexChangeImpl _value, $Res Function(_$OnIndexChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$OnIndexChangeImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnIndexChangeImpl implements OnIndexChange {
  const _$OnIndexChangeImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'IntroScreenEvent.onIndexChange(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnIndexChangeImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnIndexChangeImplCopyWith<_$OnIndexChangeImpl> get copyWith =>
      __$$OnIndexChangeImplCopyWithImpl<_$OnIndexChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) onIndexChange,
  }) {
    return onIndexChange(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? onIndexChange,
  }) {
    return onIndexChange?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? onIndexChange,
    required TResult orElse(),
  }) {
    if (onIndexChange != null) {
      return onIndexChange(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnIndexChange value) onIndexChange,
  }) {
    return onIndexChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnIndexChange value)? onIndexChange,
  }) {
    return onIndexChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnIndexChange value)? onIndexChange,
    required TResult orElse(),
  }) {
    if (onIndexChange != null) {
      return onIndexChange(this);
    }
    return orElse();
  }
}

abstract class OnIndexChange implements IntroScreenEvent {
  const factory OnIndexChange({required final int index}) = _$OnIndexChangeImpl;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$OnIndexChangeImplCopyWith<_$OnIndexChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IntroScreenState {
  int get pageViewIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IntroScreenStateCopyWith<IntroScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroScreenStateCopyWith<$Res> {
  factory $IntroScreenStateCopyWith(
          IntroScreenState value, $Res Function(IntroScreenState) then) =
      _$IntroScreenStateCopyWithImpl<$Res, IntroScreenState>;
  @useResult
  $Res call({int pageViewIndex});
}

/// @nodoc
class _$IntroScreenStateCopyWithImpl<$Res, $Val extends IntroScreenState>
    implements $IntroScreenStateCopyWith<$Res> {
  _$IntroScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageViewIndex = null,
  }) {
    return _then(_value.copyWith(
      pageViewIndex: null == pageViewIndex
          ? _value.pageViewIndex
          : pageViewIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntroScreenStateImplCopyWith<$Res>
    implements $IntroScreenStateCopyWith<$Res> {
  factory _$$IntroScreenStateImplCopyWith(_$IntroScreenStateImpl value,
          $Res Function(_$IntroScreenStateImpl) then) =
      __$$IntroScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageViewIndex});
}

/// @nodoc
class __$$IntroScreenStateImplCopyWithImpl<$Res>
    extends _$IntroScreenStateCopyWithImpl<$Res, _$IntroScreenStateImpl>
    implements _$$IntroScreenStateImplCopyWith<$Res> {
  __$$IntroScreenStateImplCopyWithImpl(_$IntroScreenStateImpl _value,
      $Res Function(_$IntroScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageViewIndex = null,
  }) {
    return _then(_$IntroScreenStateImpl(
      pageViewIndex: null == pageViewIndex
          ? _value.pageViewIndex
          : pageViewIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IntroScreenStateImpl implements _IntroScreenState {
  const _$IntroScreenStateImpl({this.pageViewIndex = 0});

  @override
  @JsonKey()
  final int pageViewIndex;

  @override
  String toString() {
    return 'IntroScreenState(pageViewIndex: $pageViewIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntroScreenStateImpl &&
            (identical(other.pageViewIndex, pageViewIndex) ||
                other.pageViewIndex == pageViewIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageViewIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntroScreenStateImplCopyWith<_$IntroScreenStateImpl> get copyWith =>
      __$$IntroScreenStateImplCopyWithImpl<_$IntroScreenStateImpl>(
          this, _$identity);
}

abstract class _IntroScreenState implements IntroScreenState {
  const factory _IntroScreenState({final int pageViewIndex}) =
      _$IntroScreenStateImpl;

  @override
  int get pageViewIndex;
  @override
  @JsonKey(ignore: true)
  _$$IntroScreenStateImplCopyWith<_$IntroScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
