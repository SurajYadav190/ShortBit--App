// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'help_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HelpPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() faqAPi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? faqAPi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? faqAPi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FaqAPi value) faqAPi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqAPi value)? faqAPi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqAPi value)? faqAPi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpPageEventCopyWith<$Res> {
  factory $HelpPageEventCopyWith(
          HelpPageEvent value, $Res Function(HelpPageEvent) then) =
      _$HelpPageEventCopyWithImpl<$Res, HelpPageEvent>;
}

/// @nodoc
class _$HelpPageEventCopyWithImpl<$Res, $Val extends HelpPageEvent>
    implements $HelpPageEventCopyWith<$Res> {
  _$HelpPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FaqAPiImplCopyWith<$Res> {
  factory _$$FaqAPiImplCopyWith(
          _$FaqAPiImpl value, $Res Function(_$FaqAPiImpl) then) =
      __$$FaqAPiImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FaqAPiImplCopyWithImpl<$Res>
    extends _$HelpPageEventCopyWithImpl<$Res, _$FaqAPiImpl>
    implements _$$FaqAPiImplCopyWith<$Res> {
  __$$FaqAPiImplCopyWithImpl(
      _$FaqAPiImpl _value, $Res Function(_$FaqAPiImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FaqAPiImpl implements FaqAPi {
  const _$FaqAPiImpl();

  @override
  String toString() {
    return 'HelpPageEvent.faqAPi()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FaqAPiImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() faqAPi,
  }) {
    return faqAPi();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? faqAPi,
  }) {
    return faqAPi?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? faqAPi,
    required TResult orElse(),
  }) {
    if (faqAPi != null) {
      return faqAPi();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FaqAPi value) faqAPi,
  }) {
    return faqAPi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqAPi value)? faqAPi,
  }) {
    return faqAPi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqAPi value)? faqAPi,
    required TResult orElse(),
  }) {
    if (faqAPi != null) {
      return faqAPi(this);
    }
    return orElse();
  }
}

abstract class FaqAPi implements HelpPageEvent {
  const factory FaqAPi() = _$FaqAPiImpl;
}

/// @nodoc
mixin _$HelpPageState {
  bool get faqLoading => throw _privateConstructorUsedError;
  FaqModel? get faqModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HelpPageStateCopyWith<HelpPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpPageStateCopyWith<$Res> {
  factory $HelpPageStateCopyWith(
          HelpPageState value, $Res Function(HelpPageState) then) =
      _$HelpPageStateCopyWithImpl<$Res, HelpPageState>;
  @useResult
  $Res call({bool faqLoading, FaqModel? faqModel});
}

/// @nodoc
class _$HelpPageStateCopyWithImpl<$Res, $Val extends HelpPageState>
    implements $HelpPageStateCopyWith<$Res> {
  _$HelpPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faqLoading = null,
    Object? faqModel = freezed,
  }) {
    return _then(_value.copyWith(
      faqLoading: null == faqLoading
          ? _value.faqLoading
          : faqLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      faqModel: freezed == faqModel
          ? _value.faqModel
          : faqModel // ignore: cast_nullable_to_non_nullable
              as FaqModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelpPageStateImplCopyWith<$Res>
    implements $HelpPageStateCopyWith<$Res> {
  factory _$$HelpPageStateImplCopyWith(
          _$HelpPageStateImpl value, $Res Function(_$HelpPageStateImpl) then) =
      __$$HelpPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool faqLoading, FaqModel? faqModel});
}

/// @nodoc
class __$$HelpPageStateImplCopyWithImpl<$Res>
    extends _$HelpPageStateCopyWithImpl<$Res, _$HelpPageStateImpl>
    implements _$$HelpPageStateImplCopyWith<$Res> {
  __$$HelpPageStateImplCopyWithImpl(
      _$HelpPageStateImpl _value, $Res Function(_$HelpPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faqLoading = null,
    Object? faqModel = freezed,
  }) {
    return _then(_$HelpPageStateImpl(
      faqLoading: null == faqLoading
          ? _value.faqLoading
          : faqLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      faqModel: freezed == faqModel
          ? _value.faqModel
          : faqModel // ignore: cast_nullable_to_non_nullable
              as FaqModel?,
    ));
  }
}

/// @nodoc

class _$HelpPageStateImpl implements _HelpPageState {
  const _$HelpPageStateImpl({this.faqLoading = false, this.faqModel});

  @override
  @JsonKey()
  final bool faqLoading;
  @override
  final FaqModel? faqModel;

  @override
  String toString() {
    return 'HelpPageState(faqLoading: $faqLoading, faqModel: $faqModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelpPageStateImpl &&
            (identical(other.faqLoading, faqLoading) ||
                other.faqLoading == faqLoading) &&
            (identical(other.faqModel, faqModel) ||
                other.faqModel == faqModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, faqLoading, faqModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelpPageStateImplCopyWith<_$HelpPageStateImpl> get copyWith =>
      __$$HelpPageStateImplCopyWithImpl<_$HelpPageStateImpl>(this, _$identity);
}

abstract class _HelpPageState implements HelpPageState {
  const factory _HelpPageState(
      {final bool faqLoading, final FaqModel? faqModel}) = _$HelpPageStateImpl;

  @override
  bool get faqLoading;
  @override
  FaqModel? get faqModel;
  @override
  @JsonKey(ignore: true)
  _$$HelpPageStateImplCopyWith<_$HelpPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
