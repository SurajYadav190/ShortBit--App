// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'short_video_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShortVideoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? videoId, String? urlReels) likedEvent,
    required TResult Function(int limit, BuildContext context, int page)
        getReelsApi,
    required TResult Function(String? urlReels, bool likeStatus)
        listFilledEvent,
    required TResult Function(
            String? urlReels,
            int? videoIndex,
            String? videoId,
            AnimationController? animationController,
            BuildContext? context)
        handleDoubleTapEvent,
    required TResult Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)
        initializeControllerEvent,
    required TResult Function(VideoPlayerController? videoController)
        onTapEvent,
    required TResult Function(String? url) getIndexFromUrl,
    required TResult Function(int? viewCount, String? videoId) viewCountEvent,
    required TResult Function(String? videoId, int? page, int? limit)
        getCommentApi,
    required TResult Function(
            String? postId, String? comment, BuildContext? context)
        writeCommentAPi,
    required TResult Function(
            BuildContext? context, String? deleteId, String? postId)
        deleteComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? videoId, String? urlReels)? likedEvent,
    TResult? Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult? Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult? Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult? Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult? Function(VideoPlayerController? videoController)? onTapEvent,
    TResult? Function(String? url)? getIndexFromUrl,
    TResult? Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult? Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult? Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult? Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? videoId, String? urlReels)? likedEvent,
    TResult Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult Function(String? urlReels, AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult Function(VideoPlayerController? videoController)? onTapEvent,
    TResult Function(String? url)? getIndexFromUrl,
    TResult Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikedEvent value) likedEvent,
    required TResult Function(GetReelsApi value) getReelsApi,
    required TResult Function(ListFilledEvent value) listFilledEvent,
    required TResult Function(HandleDoubleTapEvent value) handleDoubleTapEvent,
    required TResult Function(InitializeControllerEvent value)
        initializeControllerEvent,
    required TResult Function(OnTapEvent value) onTapEvent,
    required TResult Function(GetIndexFromUrl value) getIndexFromUrl,
    required TResult Function(ViewCountEvent value) viewCountEvent,
    required TResult Function(GetCommentApi value) getCommentApi,
    required TResult Function(WriteCommentAPi value) writeCommentAPi,
    required TResult Function(DeleteComment value) deleteComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikedEvent value)? likedEvent,
    TResult? Function(GetReelsApi value)? getReelsApi,
    TResult? Function(ListFilledEvent value)? listFilledEvent,
    TResult? Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult? Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult? Function(OnTapEvent value)? onTapEvent,
    TResult? Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult? Function(ViewCountEvent value)? viewCountEvent,
    TResult? Function(GetCommentApi value)? getCommentApi,
    TResult? Function(WriteCommentAPi value)? writeCommentAPi,
    TResult? Function(DeleteComment value)? deleteComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikedEvent value)? likedEvent,
    TResult Function(GetReelsApi value)? getReelsApi,
    TResult Function(ListFilledEvent value)? listFilledEvent,
    TResult Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult Function(OnTapEvent value)? onTapEvent,
    TResult Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult Function(ViewCountEvent value)? viewCountEvent,
    TResult Function(GetCommentApi value)? getCommentApi,
    TResult Function(WriteCommentAPi value)? writeCommentAPi,
    TResult Function(DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortVideoEventCopyWith<$Res> {
  factory $ShortVideoEventCopyWith(
          ShortVideoEvent value, $Res Function(ShortVideoEvent) then) =
      _$ShortVideoEventCopyWithImpl<$Res, ShortVideoEvent>;
}

/// @nodoc
class _$ShortVideoEventCopyWithImpl<$Res, $Val extends ShortVideoEvent>
    implements $ShortVideoEventCopyWith<$Res> {
  _$ShortVideoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LikedEventImplCopyWith<$Res> {
  factory _$$LikedEventImplCopyWith(
          _$LikedEventImpl value, $Res Function(_$LikedEventImpl) then) =
      __$$LikedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? videoId, String? urlReels});
}

/// @nodoc
class __$$LikedEventImplCopyWithImpl<$Res>
    extends _$ShortVideoEventCopyWithImpl<$Res, _$LikedEventImpl>
    implements _$$LikedEventImplCopyWith<$Res> {
  __$$LikedEventImplCopyWithImpl(
      _$LikedEventImpl _value, $Res Function(_$LikedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = freezed,
    Object? urlReels = freezed,
  }) {
    return _then(_$LikedEventImpl(
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      urlReels: freezed == urlReels
          ? _value.urlReels
          : urlReels // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LikedEventImpl implements LikedEvent {
  const _$LikedEventImpl({this.videoId, this.urlReels});

  @override
  final String? videoId;
  @override
  final String? urlReels;

  @override
  String toString() {
    return 'ShortVideoEvent.likedEvent(videoId: $videoId, urlReels: $urlReels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikedEventImpl &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.urlReels, urlReels) ||
                other.urlReels == urlReels));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId, urlReels);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikedEventImplCopyWith<_$LikedEventImpl> get copyWith =>
      __$$LikedEventImplCopyWithImpl<_$LikedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? videoId, String? urlReels) likedEvent,
    required TResult Function(int limit, BuildContext context, int page)
        getReelsApi,
    required TResult Function(String? urlReels, bool likeStatus)
        listFilledEvent,
    required TResult Function(
            String? urlReels,
            int? videoIndex,
            String? videoId,
            AnimationController? animationController,
            BuildContext? context)
        handleDoubleTapEvent,
    required TResult Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)
        initializeControllerEvent,
    required TResult Function(VideoPlayerController? videoController)
        onTapEvent,
    required TResult Function(String? url) getIndexFromUrl,
    required TResult Function(int? viewCount, String? videoId) viewCountEvent,
    required TResult Function(String? videoId, int? page, int? limit)
        getCommentApi,
    required TResult Function(
            String? postId, String? comment, BuildContext? context)
        writeCommentAPi,
    required TResult Function(
            BuildContext? context, String? deleteId, String? postId)
        deleteComment,
  }) {
    return likedEvent(videoId, urlReels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? videoId, String? urlReels)? likedEvent,
    TResult? Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult? Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult? Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult? Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult? Function(VideoPlayerController? videoController)? onTapEvent,
    TResult? Function(String? url)? getIndexFromUrl,
    TResult? Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult? Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult? Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult? Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
  }) {
    return likedEvent?.call(videoId, urlReels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? videoId, String? urlReels)? likedEvent,
    TResult Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult Function(String? urlReels, AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult Function(VideoPlayerController? videoController)? onTapEvent,
    TResult Function(String? url)? getIndexFromUrl,
    TResult Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
    required TResult orElse(),
  }) {
    if (likedEvent != null) {
      return likedEvent(videoId, urlReels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikedEvent value) likedEvent,
    required TResult Function(GetReelsApi value) getReelsApi,
    required TResult Function(ListFilledEvent value) listFilledEvent,
    required TResult Function(HandleDoubleTapEvent value) handleDoubleTapEvent,
    required TResult Function(InitializeControllerEvent value)
        initializeControllerEvent,
    required TResult Function(OnTapEvent value) onTapEvent,
    required TResult Function(GetIndexFromUrl value) getIndexFromUrl,
    required TResult Function(ViewCountEvent value) viewCountEvent,
    required TResult Function(GetCommentApi value) getCommentApi,
    required TResult Function(WriteCommentAPi value) writeCommentAPi,
    required TResult Function(DeleteComment value) deleteComment,
  }) {
    return likedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikedEvent value)? likedEvent,
    TResult? Function(GetReelsApi value)? getReelsApi,
    TResult? Function(ListFilledEvent value)? listFilledEvent,
    TResult? Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult? Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult? Function(OnTapEvent value)? onTapEvent,
    TResult? Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult? Function(ViewCountEvent value)? viewCountEvent,
    TResult? Function(GetCommentApi value)? getCommentApi,
    TResult? Function(WriteCommentAPi value)? writeCommentAPi,
    TResult? Function(DeleteComment value)? deleteComment,
  }) {
    return likedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikedEvent value)? likedEvent,
    TResult Function(GetReelsApi value)? getReelsApi,
    TResult Function(ListFilledEvent value)? listFilledEvent,
    TResult Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult Function(OnTapEvent value)? onTapEvent,
    TResult Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult Function(ViewCountEvent value)? viewCountEvent,
    TResult Function(GetCommentApi value)? getCommentApi,
    TResult Function(WriteCommentAPi value)? writeCommentAPi,
    TResult Function(DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (likedEvent != null) {
      return likedEvent(this);
    }
    return orElse();
  }
}

abstract class LikedEvent implements ShortVideoEvent {
  const factory LikedEvent({final String? videoId, final String? urlReels}) =
      _$LikedEventImpl;

  String? get videoId;
  String? get urlReels;
  @JsonKey(ignore: true)
  _$$LikedEventImplCopyWith<_$LikedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetReelsApiImplCopyWith<$Res> {
  factory _$$GetReelsApiImplCopyWith(
          _$GetReelsApiImpl value, $Res Function(_$GetReelsApiImpl) then) =
      __$$GetReelsApiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int limit, BuildContext context, int page});
}

/// @nodoc
class __$$GetReelsApiImplCopyWithImpl<$Res>
    extends _$ShortVideoEventCopyWithImpl<$Res, _$GetReelsApiImpl>
    implements _$$GetReelsApiImplCopyWith<$Res> {
  __$$GetReelsApiImplCopyWithImpl(
      _$GetReelsApiImpl _value, $Res Function(_$GetReelsApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? context = null,
    Object? page = null,
  }) {
    return _then(_$GetReelsApiImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetReelsApiImpl implements GetReelsApi {
  const _$GetReelsApiImpl(
      {required this.limit, required this.context, required this.page});

  @override
  final int limit;
  @override
  final BuildContext context;
  @override
  final int page;

  @override
  String toString() {
    return 'ShortVideoEvent.getReelsApi(limit: $limit, context: $context, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReelsApiImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, context, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReelsApiImplCopyWith<_$GetReelsApiImpl> get copyWith =>
      __$$GetReelsApiImplCopyWithImpl<_$GetReelsApiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? videoId, String? urlReels) likedEvent,
    required TResult Function(int limit, BuildContext context, int page)
        getReelsApi,
    required TResult Function(String? urlReels, bool likeStatus)
        listFilledEvent,
    required TResult Function(
            String? urlReels,
            int? videoIndex,
            String? videoId,
            AnimationController? animationController,
            BuildContext? context)
        handleDoubleTapEvent,
    required TResult Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)
        initializeControllerEvent,
    required TResult Function(VideoPlayerController? videoController)
        onTapEvent,
    required TResult Function(String? url) getIndexFromUrl,
    required TResult Function(int? viewCount, String? videoId) viewCountEvent,
    required TResult Function(String? videoId, int? page, int? limit)
        getCommentApi,
    required TResult Function(
            String? postId, String? comment, BuildContext? context)
        writeCommentAPi,
    required TResult Function(
            BuildContext? context, String? deleteId, String? postId)
        deleteComment,
  }) {
    return getReelsApi(limit, context, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? videoId, String? urlReels)? likedEvent,
    TResult? Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult? Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult? Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult? Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult? Function(VideoPlayerController? videoController)? onTapEvent,
    TResult? Function(String? url)? getIndexFromUrl,
    TResult? Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult? Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult? Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult? Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
  }) {
    return getReelsApi?.call(limit, context, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? videoId, String? urlReels)? likedEvent,
    TResult Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult Function(String? urlReels, AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult Function(VideoPlayerController? videoController)? onTapEvent,
    TResult Function(String? url)? getIndexFromUrl,
    TResult Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
    required TResult orElse(),
  }) {
    if (getReelsApi != null) {
      return getReelsApi(limit, context, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikedEvent value) likedEvent,
    required TResult Function(GetReelsApi value) getReelsApi,
    required TResult Function(ListFilledEvent value) listFilledEvent,
    required TResult Function(HandleDoubleTapEvent value) handleDoubleTapEvent,
    required TResult Function(InitializeControllerEvent value)
        initializeControllerEvent,
    required TResult Function(OnTapEvent value) onTapEvent,
    required TResult Function(GetIndexFromUrl value) getIndexFromUrl,
    required TResult Function(ViewCountEvent value) viewCountEvent,
    required TResult Function(GetCommentApi value) getCommentApi,
    required TResult Function(WriteCommentAPi value) writeCommentAPi,
    required TResult Function(DeleteComment value) deleteComment,
  }) {
    return getReelsApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikedEvent value)? likedEvent,
    TResult? Function(GetReelsApi value)? getReelsApi,
    TResult? Function(ListFilledEvent value)? listFilledEvent,
    TResult? Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult? Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult? Function(OnTapEvent value)? onTapEvent,
    TResult? Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult? Function(ViewCountEvent value)? viewCountEvent,
    TResult? Function(GetCommentApi value)? getCommentApi,
    TResult? Function(WriteCommentAPi value)? writeCommentAPi,
    TResult? Function(DeleteComment value)? deleteComment,
  }) {
    return getReelsApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikedEvent value)? likedEvent,
    TResult Function(GetReelsApi value)? getReelsApi,
    TResult Function(ListFilledEvent value)? listFilledEvent,
    TResult Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult Function(OnTapEvent value)? onTapEvent,
    TResult Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult Function(ViewCountEvent value)? viewCountEvent,
    TResult Function(GetCommentApi value)? getCommentApi,
    TResult Function(WriteCommentAPi value)? writeCommentAPi,
    TResult Function(DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (getReelsApi != null) {
      return getReelsApi(this);
    }
    return orElse();
  }
}

abstract class GetReelsApi implements ShortVideoEvent {
  const factory GetReelsApi(
      {required final int limit,
      required final BuildContext context,
      required final int page}) = _$GetReelsApiImpl;

  int get limit;
  BuildContext get context;
  int get page;
  @JsonKey(ignore: true)
  _$$GetReelsApiImplCopyWith<_$GetReelsApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListFilledEventImplCopyWith<$Res> {
  factory _$$ListFilledEventImplCopyWith(_$ListFilledEventImpl value,
          $Res Function(_$ListFilledEventImpl) then) =
      __$$ListFilledEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? urlReels, bool likeStatus});
}

/// @nodoc
class __$$ListFilledEventImplCopyWithImpl<$Res>
    extends _$ShortVideoEventCopyWithImpl<$Res, _$ListFilledEventImpl>
    implements _$$ListFilledEventImplCopyWith<$Res> {
  __$$ListFilledEventImplCopyWithImpl(
      _$ListFilledEventImpl _value, $Res Function(_$ListFilledEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlReels = freezed,
    Object? likeStatus = null,
  }) {
    return _then(_$ListFilledEventImpl(
      urlReels: freezed == urlReels
          ? _value.urlReels
          : urlReels // ignore: cast_nullable_to_non_nullable
              as String?,
      likeStatus: null == likeStatus
          ? _value.likeStatus
          : likeStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ListFilledEventImpl implements ListFilledEvent {
  const _$ListFilledEventImpl({this.urlReels, this.likeStatus = false});

  @override
  final String? urlReels;
  @override
  @JsonKey()
  final bool likeStatus;

  @override
  String toString() {
    return 'ShortVideoEvent.listFilledEvent(urlReels: $urlReels, likeStatus: $likeStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListFilledEventImpl &&
            (identical(other.urlReels, urlReels) ||
                other.urlReels == urlReels) &&
            (identical(other.likeStatus, likeStatus) ||
                other.likeStatus == likeStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, urlReels, likeStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListFilledEventImplCopyWith<_$ListFilledEventImpl> get copyWith =>
      __$$ListFilledEventImplCopyWithImpl<_$ListFilledEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? videoId, String? urlReels) likedEvent,
    required TResult Function(int limit, BuildContext context, int page)
        getReelsApi,
    required TResult Function(String? urlReels, bool likeStatus)
        listFilledEvent,
    required TResult Function(
            String? urlReels,
            int? videoIndex,
            String? videoId,
            AnimationController? animationController,
            BuildContext? context)
        handleDoubleTapEvent,
    required TResult Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)
        initializeControllerEvent,
    required TResult Function(VideoPlayerController? videoController)
        onTapEvent,
    required TResult Function(String? url) getIndexFromUrl,
    required TResult Function(int? viewCount, String? videoId) viewCountEvent,
    required TResult Function(String? videoId, int? page, int? limit)
        getCommentApi,
    required TResult Function(
            String? postId, String? comment, BuildContext? context)
        writeCommentAPi,
    required TResult Function(
            BuildContext? context, String? deleteId, String? postId)
        deleteComment,
  }) {
    return listFilledEvent(urlReels, likeStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? videoId, String? urlReels)? likedEvent,
    TResult? Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult? Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult? Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult? Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult? Function(VideoPlayerController? videoController)? onTapEvent,
    TResult? Function(String? url)? getIndexFromUrl,
    TResult? Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult? Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult? Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult? Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
  }) {
    return listFilledEvent?.call(urlReels, likeStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? videoId, String? urlReels)? likedEvent,
    TResult Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult Function(String? urlReels, AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult Function(VideoPlayerController? videoController)? onTapEvent,
    TResult Function(String? url)? getIndexFromUrl,
    TResult Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
    required TResult orElse(),
  }) {
    if (listFilledEvent != null) {
      return listFilledEvent(urlReels, likeStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikedEvent value) likedEvent,
    required TResult Function(GetReelsApi value) getReelsApi,
    required TResult Function(ListFilledEvent value) listFilledEvent,
    required TResult Function(HandleDoubleTapEvent value) handleDoubleTapEvent,
    required TResult Function(InitializeControllerEvent value)
        initializeControllerEvent,
    required TResult Function(OnTapEvent value) onTapEvent,
    required TResult Function(GetIndexFromUrl value) getIndexFromUrl,
    required TResult Function(ViewCountEvent value) viewCountEvent,
    required TResult Function(GetCommentApi value) getCommentApi,
    required TResult Function(WriteCommentAPi value) writeCommentAPi,
    required TResult Function(DeleteComment value) deleteComment,
  }) {
    return listFilledEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikedEvent value)? likedEvent,
    TResult? Function(GetReelsApi value)? getReelsApi,
    TResult? Function(ListFilledEvent value)? listFilledEvent,
    TResult? Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult? Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult? Function(OnTapEvent value)? onTapEvent,
    TResult? Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult? Function(ViewCountEvent value)? viewCountEvent,
    TResult? Function(GetCommentApi value)? getCommentApi,
    TResult? Function(WriteCommentAPi value)? writeCommentAPi,
    TResult? Function(DeleteComment value)? deleteComment,
  }) {
    return listFilledEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikedEvent value)? likedEvent,
    TResult Function(GetReelsApi value)? getReelsApi,
    TResult Function(ListFilledEvent value)? listFilledEvent,
    TResult Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult Function(OnTapEvent value)? onTapEvent,
    TResult Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult Function(ViewCountEvent value)? viewCountEvent,
    TResult Function(GetCommentApi value)? getCommentApi,
    TResult Function(WriteCommentAPi value)? writeCommentAPi,
    TResult Function(DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (listFilledEvent != null) {
      return listFilledEvent(this);
    }
    return orElse();
  }
}

abstract class ListFilledEvent implements ShortVideoEvent {
  const factory ListFilledEvent(
      {final String? urlReels, final bool likeStatus}) = _$ListFilledEventImpl;

  String? get urlReels;
  bool get likeStatus;
  @JsonKey(ignore: true)
  _$$ListFilledEventImplCopyWith<_$ListFilledEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HandleDoubleTapEventImplCopyWith<$Res> {
  factory _$$HandleDoubleTapEventImplCopyWith(_$HandleDoubleTapEventImpl value,
          $Res Function(_$HandleDoubleTapEventImpl) then) =
      __$$HandleDoubleTapEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? urlReels,
      int? videoIndex,
      String? videoId,
      AnimationController? animationController,
      BuildContext? context});
}

/// @nodoc
class __$$HandleDoubleTapEventImplCopyWithImpl<$Res>
    extends _$ShortVideoEventCopyWithImpl<$Res, _$HandleDoubleTapEventImpl>
    implements _$$HandleDoubleTapEventImplCopyWith<$Res> {
  __$$HandleDoubleTapEventImplCopyWithImpl(_$HandleDoubleTapEventImpl _value,
      $Res Function(_$HandleDoubleTapEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlReels = freezed,
    Object? videoIndex = freezed,
    Object? videoId = freezed,
    Object? animationController = freezed,
    Object? context = freezed,
  }) {
    return _then(_$HandleDoubleTapEventImpl(
      urlReels: freezed == urlReels
          ? _value.urlReels
          : urlReels // ignore: cast_nullable_to_non_nullable
              as String?,
      videoIndex: freezed == videoIndex
          ? _value.videoIndex
          : videoIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      animationController: freezed == animationController
          ? _value.animationController
          : animationController // ignore: cast_nullable_to_non_nullable
              as AnimationController?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
    ));
  }
}

/// @nodoc

class _$HandleDoubleTapEventImpl implements HandleDoubleTapEvent {
  const _$HandleDoubleTapEventImpl(
      {this.urlReels,
      this.videoIndex,
      this.videoId,
      this.animationController,
      this.context});

  @override
  final String? urlReels;
  @override
  final int? videoIndex;
  @override
  final String? videoId;
  @override
  final AnimationController? animationController;
  @override
  final BuildContext? context;

  @override
  String toString() {
    return 'ShortVideoEvent.handleDoubleTapEvent(urlReels: $urlReels, videoIndex: $videoIndex, videoId: $videoId, animationController: $animationController, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandleDoubleTapEventImpl &&
            (identical(other.urlReels, urlReels) ||
                other.urlReels == urlReels) &&
            (identical(other.videoIndex, videoIndex) ||
                other.videoIndex == videoIndex) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.animationController, animationController) ||
                other.animationController == animationController) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, urlReels, videoIndex, videoId, animationController, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HandleDoubleTapEventImplCopyWith<_$HandleDoubleTapEventImpl>
      get copyWith =>
          __$$HandleDoubleTapEventImplCopyWithImpl<_$HandleDoubleTapEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? videoId, String? urlReels) likedEvent,
    required TResult Function(int limit, BuildContext context, int page)
        getReelsApi,
    required TResult Function(String? urlReels, bool likeStatus)
        listFilledEvent,
    required TResult Function(
            String? urlReels,
            int? videoIndex,
            String? videoId,
            AnimationController? animationController,
            BuildContext? context)
        handleDoubleTapEvent,
    required TResult Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)
        initializeControllerEvent,
    required TResult Function(VideoPlayerController? videoController)
        onTapEvent,
    required TResult Function(String? url) getIndexFromUrl,
    required TResult Function(int? viewCount, String? videoId) viewCountEvent,
    required TResult Function(String? videoId, int? page, int? limit)
        getCommentApi,
    required TResult Function(
            String? postId, String? comment, BuildContext? context)
        writeCommentAPi,
    required TResult Function(
            BuildContext? context, String? deleteId, String? postId)
        deleteComment,
  }) {
    return handleDoubleTapEvent(
        urlReels, videoIndex, videoId, animationController, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? videoId, String? urlReels)? likedEvent,
    TResult? Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult? Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult? Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult? Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult? Function(VideoPlayerController? videoController)? onTapEvent,
    TResult? Function(String? url)? getIndexFromUrl,
    TResult? Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult? Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult? Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult? Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
  }) {
    return handleDoubleTapEvent?.call(
        urlReels, videoIndex, videoId, animationController, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? videoId, String? urlReels)? likedEvent,
    TResult Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult Function(String? urlReels, AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult Function(VideoPlayerController? videoController)? onTapEvent,
    TResult Function(String? url)? getIndexFromUrl,
    TResult Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
    required TResult orElse(),
  }) {
    if (handleDoubleTapEvent != null) {
      return handleDoubleTapEvent(
          urlReels, videoIndex, videoId, animationController, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikedEvent value) likedEvent,
    required TResult Function(GetReelsApi value) getReelsApi,
    required TResult Function(ListFilledEvent value) listFilledEvent,
    required TResult Function(HandleDoubleTapEvent value) handleDoubleTapEvent,
    required TResult Function(InitializeControllerEvent value)
        initializeControllerEvent,
    required TResult Function(OnTapEvent value) onTapEvent,
    required TResult Function(GetIndexFromUrl value) getIndexFromUrl,
    required TResult Function(ViewCountEvent value) viewCountEvent,
    required TResult Function(GetCommentApi value) getCommentApi,
    required TResult Function(WriteCommentAPi value) writeCommentAPi,
    required TResult Function(DeleteComment value) deleteComment,
  }) {
    return handleDoubleTapEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikedEvent value)? likedEvent,
    TResult? Function(GetReelsApi value)? getReelsApi,
    TResult? Function(ListFilledEvent value)? listFilledEvent,
    TResult? Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult? Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult? Function(OnTapEvent value)? onTapEvent,
    TResult? Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult? Function(ViewCountEvent value)? viewCountEvent,
    TResult? Function(GetCommentApi value)? getCommentApi,
    TResult? Function(WriteCommentAPi value)? writeCommentAPi,
    TResult? Function(DeleteComment value)? deleteComment,
  }) {
    return handleDoubleTapEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikedEvent value)? likedEvent,
    TResult Function(GetReelsApi value)? getReelsApi,
    TResult Function(ListFilledEvent value)? listFilledEvent,
    TResult Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult Function(OnTapEvent value)? onTapEvent,
    TResult Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult Function(ViewCountEvent value)? viewCountEvent,
    TResult Function(GetCommentApi value)? getCommentApi,
    TResult Function(WriteCommentAPi value)? writeCommentAPi,
    TResult Function(DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (handleDoubleTapEvent != null) {
      return handleDoubleTapEvent(this);
    }
    return orElse();
  }
}

abstract class HandleDoubleTapEvent implements ShortVideoEvent {
  const factory HandleDoubleTapEvent(
      {final String? urlReels,
      final int? videoIndex,
      final String? videoId,
      final AnimationController? animationController,
      final BuildContext? context}) = _$HandleDoubleTapEventImpl;

  String? get urlReels;
  int? get videoIndex;
  String? get videoId;
  AnimationController? get animationController;
  BuildContext? get context;
  @JsonKey(ignore: true)
  _$$HandleDoubleTapEventImplCopyWith<_$HandleDoubleTapEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeControllerEventImplCopyWith<$Res> {
  factory _$$InitializeControllerEventImplCopyWith(
          _$InitializeControllerEventImpl value,
          $Res Function(_$InitializeControllerEventImpl) then) =
      __$$InitializeControllerEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? urlReels,
      AnimationController? animationController,
      VideoPlayerController? videoController});
}

/// @nodoc
class __$$InitializeControllerEventImplCopyWithImpl<$Res>
    extends _$ShortVideoEventCopyWithImpl<$Res, _$InitializeControllerEventImpl>
    implements _$$InitializeControllerEventImplCopyWith<$Res> {
  __$$InitializeControllerEventImplCopyWithImpl(
      _$InitializeControllerEventImpl _value,
      $Res Function(_$InitializeControllerEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlReels = freezed,
    Object? animationController = freezed,
    Object? videoController = freezed,
  }) {
    return _then(_$InitializeControllerEventImpl(
      urlReels: freezed == urlReels
          ? _value.urlReels
          : urlReels // ignore: cast_nullable_to_non_nullable
              as String?,
      animationController: freezed == animationController
          ? _value.animationController
          : animationController // ignore: cast_nullable_to_non_nullable
              as AnimationController?,
      videoController: freezed == videoController
          ? _value.videoController
          : videoController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
    ));
  }
}

/// @nodoc

class _$InitializeControllerEventImpl implements InitializeControllerEvent {
  const _$InitializeControllerEventImpl(
      {this.urlReels, this.animationController, this.videoController});

  @override
  final String? urlReels;
  @override
  final AnimationController? animationController;
  @override
  final VideoPlayerController? videoController;

  @override
  String toString() {
    return 'ShortVideoEvent.initializeControllerEvent(urlReels: $urlReels, animationController: $animationController, videoController: $videoController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeControllerEventImpl &&
            (identical(other.urlReels, urlReels) ||
                other.urlReels == urlReels) &&
            (identical(other.animationController, animationController) ||
                other.animationController == animationController) &&
            (identical(other.videoController, videoController) ||
                other.videoController == videoController));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, urlReels, animationController, videoController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeControllerEventImplCopyWith<_$InitializeControllerEventImpl>
      get copyWith => __$$InitializeControllerEventImplCopyWithImpl<
          _$InitializeControllerEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? videoId, String? urlReels) likedEvent,
    required TResult Function(int limit, BuildContext context, int page)
        getReelsApi,
    required TResult Function(String? urlReels, bool likeStatus)
        listFilledEvent,
    required TResult Function(
            String? urlReels,
            int? videoIndex,
            String? videoId,
            AnimationController? animationController,
            BuildContext? context)
        handleDoubleTapEvent,
    required TResult Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)
        initializeControllerEvent,
    required TResult Function(VideoPlayerController? videoController)
        onTapEvent,
    required TResult Function(String? url) getIndexFromUrl,
    required TResult Function(int? viewCount, String? videoId) viewCountEvent,
    required TResult Function(String? videoId, int? page, int? limit)
        getCommentApi,
    required TResult Function(
            String? postId, String? comment, BuildContext? context)
        writeCommentAPi,
    required TResult Function(
            BuildContext? context, String? deleteId, String? postId)
        deleteComment,
  }) {
    return initializeControllerEvent(
        urlReels, animationController, videoController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? videoId, String? urlReels)? likedEvent,
    TResult? Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult? Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult? Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult? Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult? Function(VideoPlayerController? videoController)? onTapEvent,
    TResult? Function(String? url)? getIndexFromUrl,
    TResult? Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult? Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult? Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult? Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
  }) {
    return initializeControllerEvent?.call(
        urlReels, animationController, videoController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? videoId, String? urlReels)? likedEvent,
    TResult Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult Function(String? urlReels, AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult Function(VideoPlayerController? videoController)? onTapEvent,
    TResult Function(String? url)? getIndexFromUrl,
    TResult Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
    required TResult orElse(),
  }) {
    if (initializeControllerEvent != null) {
      return initializeControllerEvent(
          urlReels, animationController, videoController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikedEvent value) likedEvent,
    required TResult Function(GetReelsApi value) getReelsApi,
    required TResult Function(ListFilledEvent value) listFilledEvent,
    required TResult Function(HandleDoubleTapEvent value) handleDoubleTapEvent,
    required TResult Function(InitializeControllerEvent value)
        initializeControllerEvent,
    required TResult Function(OnTapEvent value) onTapEvent,
    required TResult Function(GetIndexFromUrl value) getIndexFromUrl,
    required TResult Function(ViewCountEvent value) viewCountEvent,
    required TResult Function(GetCommentApi value) getCommentApi,
    required TResult Function(WriteCommentAPi value) writeCommentAPi,
    required TResult Function(DeleteComment value) deleteComment,
  }) {
    return initializeControllerEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikedEvent value)? likedEvent,
    TResult? Function(GetReelsApi value)? getReelsApi,
    TResult? Function(ListFilledEvent value)? listFilledEvent,
    TResult? Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult? Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult? Function(OnTapEvent value)? onTapEvent,
    TResult? Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult? Function(ViewCountEvent value)? viewCountEvent,
    TResult? Function(GetCommentApi value)? getCommentApi,
    TResult? Function(WriteCommentAPi value)? writeCommentAPi,
    TResult? Function(DeleteComment value)? deleteComment,
  }) {
    return initializeControllerEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikedEvent value)? likedEvent,
    TResult Function(GetReelsApi value)? getReelsApi,
    TResult Function(ListFilledEvent value)? listFilledEvent,
    TResult Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult Function(OnTapEvent value)? onTapEvent,
    TResult Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult Function(ViewCountEvent value)? viewCountEvent,
    TResult Function(GetCommentApi value)? getCommentApi,
    TResult Function(WriteCommentAPi value)? writeCommentAPi,
    TResult Function(DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (initializeControllerEvent != null) {
      return initializeControllerEvent(this);
    }
    return orElse();
  }
}

abstract class InitializeControllerEvent implements ShortVideoEvent {
  const factory InitializeControllerEvent(
          {final String? urlReels,
          final AnimationController? animationController,
          final VideoPlayerController? videoController}) =
      _$InitializeControllerEventImpl;

  String? get urlReels;
  AnimationController? get animationController;
  VideoPlayerController? get videoController;
  @JsonKey(ignore: true)
  _$$InitializeControllerEventImplCopyWith<_$InitializeControllerEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnTapEventImplCopyWith<$Res> {
  factory _$$OnTapEventImplCopyWith(
          _$OnTapEventImpl value, $Res Function(_$OnTapEventImpl) then) =
      __$$OnTapEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VideoPlayerController? videoController});
}

/// @nodoc
class __$$OnTapEventImplCopyWithImpl<$Res>
    extends _$ShortVideoEventCopyWithImpl<$Res, _$OnTapEventImpl>
    implements _$$OnTapEventImplCopyWith<$Res> {
  __$$OnTapEventImplCopyWithImpl(
      _$OnTapEventImpl _value, $Res Function(_$OnTapEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoController = freezed,
  }) {
    return _then(_$OnTapEventImpl(
      videoController: freezed == videoController
          ? _value.videoController
          : videoController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
    ));
  }
}

/// @nodoc

class _$OnTapEventImpl implements OnTapEvent {
  const _$OnTapEventImpl({this.videoController});

  @override
  final VideoPlayerController? videoController;

  @override
  String toString() {
    return 'ShortVideoEvent.onTapEvent(videoController: $videoController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTapEventImpl &&
            (identical(other.videoController, videoController) ||
                other.videoController == videoController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTapEventImplCopyWith<_$OnTapEventImpl> get copyWith =>
      __$$OnTapEventImplCopyWithImpl<_$OnTapEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? videoId, String? urlReels) likedEvent,
    required TResult Function(int limit, BuildContext context, int page)
        getReelsApi,
    required TResult Function(String? urlReels, bool likeStatus)
        listFilledEvent,
    required TResult Function(
            String? urlReels,
            int? videoIndex,
            String? videoId,
            AnimationController? animationController,
            BuildContext? context)
        handleDoubleTapEvent,
    required TResult Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)
        initializeControllerEvent,
    required TResult Function(VideoPlayerController? videoController)
        onTapEvent,
    required TResult Function(String? url) getIndexFromUrl,
    required TResult Function(int? viewCount, String? videoId) viewCountEvent,
    required TResult Function(String? videoId, int? page, int? limit)
        getCommentApi,
    required TResult Function(
            String? postId, String? comment, BuildContext? context)
        writeCommentAPi,
    required TResult Function(
            BuildContext? context, String? deleteId, String? postId)
        deleteComment,
  }) {
    return onTapEvent(videoController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? videoId, String? urlReels)? likedEvent,
    TResult? Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult? Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult? Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult? Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult? Function(VideoPlayerController? videoController)? onTapEvent,
    TResult? Function(String? url)? getIndexFromUrl,
    TResult? Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult? Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult? Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult? Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
  }) {
    return onTapEvent?.call(videoController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? videoId, String? urlReels)? likedEvent,
    TResult Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult Function(String? urlReels, AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult Function(VideoPlayerController? videoController)? onTapEvent,
    TResult Function(String? url)? getIndexFromUrl,
    TResult Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
    required TResult orElse(),
  }) {
    if (onTapEvent != null) {
      return onTapEvent(videoController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikedEvent value) likedEvent,
    required TResult Function(GetReelsApi value) getReelsApi,
    required TResult Function(ListFilledEvent value) listFilledEvent,
    required TResult Function(HandleDoubleTapEvent value) handleDoubleTapEvent,
    required TResult Function(InitializeControllerEvent value)
        initializeControllerEvent,
    required TResult Function(OnTapEvent value) onTapEvent,
    required TResult Function(GetIndexFromUrl value) getIndexFromUrl,
    required TResult Function(ViewCountEvent value) viewCountEvent,
    required TResult Function(GetCommentApi value) getCommentApi,
    required TResult Function(WriteCommentAPi value) writeCommentAPi,
    required TResult Function(DeleteComment value) deleteComment,
  }) {
    return onTapEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikedEvent value)? likedEvent,
    TResult? Function(GetReelsApi value)? getReelsApi,
    TResult? Function(ListFilledEvent value)? listFilledEvent,
    TResult? Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult? Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult? Function(OnTapEvent value)? onTapEvent,
    TResult? Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult? Function(ViewCountEvent value)? viewCountEvent,
    TResult? Function(GetCommentApi value)? getCommentApi,
    TResult? Function(WriteCommentAPi value)? writeCommentAPi,
    TResult? Function(DeleteComment value)? deleteComment,
  }) {
    return onTapEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikedEvent value)? likedEvent,
    TResult Function(GetReelsApi value)? getReelsApi,
    TResult Function(ListFilledEvent value)? listFilledEvent,
    TResult Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult Function(OnTapEvent value)? onTapEvent,
    TResult Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult Function(ViewCountEvent value)? viewCountEvent,
    TResult Function(GetCommentApi value)? getCommentApi,
    TResult Function(WriteCommentAPi value)? writeCommentAPi,
    TResult Function(DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (onTapEvent != null) {
      return onTapEvent(this);
    }
    return orElse();
  }
}

abstract class OnTapEvent implements ShortVideoEvent {
  const factory OnTapEvent({final VideoPlayerController? videoController}) =
      _$OnTapEventImpl;

  VideoPlayerController? get videoController;
  @JsonKey(ignore: true)
  _$$OnTapEventImplCopyWith<_$OnTapEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetIndexFromUrlImplCopyWith<$Res> {
  factory _$$GetIndexFromUrlImplCopyWith(_$GetIndexFromUrlImpl value,
          $Res Function(_$GetIndexFromUrlImpl) then) =
      __$$GetIndexFromUrlImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? url});
}

/// @nodoc
class __$$GetIndexFromUrlImplCopyWithImpl<$Res>
    extends _$ShortVideoEventCopyWithImpl<$Res, _$GetIndexFromUrlImpl>
    implements _$$GetIndexFromUrlImplCopyWith<$Res> {
  __$$GetIndexFromUrlImplCopyWithImpl(
      _$GetIndexFromUrlImpl _value, $Res Function(_$GetIndexFromUrlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$GetIndexFromUrlImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetIndexFromUrlImpl implements GetIndexFromUrl {
  const _$GetIndexFromUrlImpl({this.url});

  @override
  final String? url;

  @override
  String toString() {
    return 'ShortVideoEvent.getIndexFromUrl(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetIndexFromUrlImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetIndexFromUrlImplCopyWith<_$GetIndexFromUrlImpl> get copyWith =>
      __$$GetIndexFromUrlImplCopyWithImpl<_$GetIndexFromUrlImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? videoId, String? urlReels) likedEvent,
    required TResult Function(int limit, BuildContext context, int page)
        getReelsApi,
    required TResult Function(String? urlReels, bool likeStatus)
        listFilledEvent,
    required TResult Function(
            String? urlReels,
            int? videoIndex,
            String? videoId,
            AnimationController? animationController,
            BuildContext? context)
        handleDoubleTapEvent,
    required TResult Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)
        initializeControllerEvent,
    required TResult Function(VideoPlayerController? videoController)
        onTapEvent,
    required TResult Function(String? url) getIndexFromUrl,
    required TResult Function(int? viewCount, String? videoId) viewCountEvent,
    required TResult Function(String? videoId, int? page, int? limit)
        getCommentApi,
    required TResult Function(
            String? postId, String? comment, BuildContext? context)
        writeCommentAPi,
    required TResult Function(
            BuildContext? context, String? deleteId, String? postId)
        deleteComment,
  }) {
    return getIndexFromUrl(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? videoId, String? urlReels)? likedEvent,
    TResult? Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult? Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult? Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult? Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult? Function(VideoPlayerController? videoController)? onTapEvent,
    TResult? Function(String? url)? getIndexFromUrl,
    TResult? Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult? Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult? Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult? Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
  }) {
    return getIndexFromUrl?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? videoId, String? urlReels)? likedEvent,
    TResult Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult Function(String? urlReels, AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult Function(VideoPlayerController? videoController)? onTapEvent,
    TResult Function(String? url)? getIndexFromUrl,
    TResult Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
    required TResult orElse(),
  }) {
    if (getIndexFromUrl != null) {
      return getIndexFromUrl(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikedEvent value) likedEvent,
    required TResult Function(GetReelsApi value) getReelsApi,
    required TResult Function(ListFilledEvent value) listFilledEvent,
    required TResult Function(HandleDoubleTapEvent value) handleDoubleTapEvent,
    required TResult Function(InitializeControllerEvent value)
        initializeControllerEvent,
    required TResult Function(OnTapEvent value) onTapEvent,
    required TResult Function(GetIndexFromUrl value) getIndexFromUrl,
    required TResult Function(ViewCountEvent value) viewCountEvent,
    required TResult Function(GetCommentApi value) getCommentApi,
    required TResult Function(WriteCommentAPi value) writeCommentAPi,
    required TResult Function(DeleteComment value) deleteComment,
  }) {
    return getIndexFromUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikedEvent value)? likedEvent,
    TResult? Function(GetReelsApi value)? getReelsApi,
    TResult? Function(ListFilledEvent value)? listFilledEvent,
    TResult? Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult? Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult? Function(OnTapEvent value)? onTapEvent,
    TResult? Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult? Function(ViewCountEvent value)? viewCountEvent,
    TResult? Function(GetCommentApi value)? getCommentApi,
    TResult? Function(WriteCommentAPi value)? writeCommentAPi,
    TResult? Function(DeleteComment value)? deleteComment,
  }) {
    return getIndexFromUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikedEvent value)? likedEvent,
    TResult Function(GetReelsApi value)? getReelsApi,
    TResult Function(ListFilledEvent value)? listFilledEvent,
    TResult Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult Function(OnTapEvent value)? onTapEvent,
    TResult Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult Function(ViewCountEvent value)? viewCountEvent,
    TResult Function(GetCommentApi value)? getCommentApi,
    TResult Function(WriteCommentAPi value)? writeCommentAPi,
    TResult Function(DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (getIndexFromUrl != null) {
      return getIndexFromUrl(this);
    }
    return orElse();
  }
}

abstract class GetIndexFromUrl implements ShortVideoEvent {
  const factory GetIndexFromUrl({final String? url}) = _$GetIndexFromUrlImpl;

  String? get url;
  @JsonKey(ignore: true)
  _$$GetIndexFromUrlImplCopyWith<_$GetIndexFromUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViewCountEventImplCopyWith<$Res> {
  factory _$$ViewCountEventImplCopyWith(_$ViewCountEventImpl value,
          $Res Function(_$ViewCountEventImpl) then) =
      __$$ViewCountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? viewCount, String? videoId});
}

/// @nodoc
class __$$ViewCountEventImplCopyWithImpl<$Res>
    extends _$ShortVideoEventCopyWithImpl<$Res, _$ViewCountEventImpl>
    implements _$$ViewCountEventImplCopyWith<$Res> {
  __$$ViewCountEventImplCopyWithImpl(
      _$ViewCountEventImpl _value, $Res Function(_$ViewCountEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewCount = freezed,
    Object? videoId = freezed,
  }) {
    return _then(_$ViewCountEventImpl(
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ViewCountEventImpl implements ViewCountEvent {
  const _$ViewCountEventImpl({this.viewCount, this.videoId});

  @override
  final int? viewCount;
  @override
  final String? videoId;

  @override
  String toString() {
    return 'ShortVideoEvent.viewCountEvent(viewCount: $viewCount, videoId: $videoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewCountEventImpl &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewCount, videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewCountEventImplCopyWith<_$ViewCountEventImpl> get copyWith =>
      __$$ViewCountEventImplCopyWithImpl<_$ViewCountEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? videoId, String? urlReels) likedEvent,
    required TResult Function(int limit, BuildContext context, int page)
        getReelsApi,
    required TResult Function(String? urlReels, bool likeStatus)
        listFilledEvent,
    required TResult Function(
            String? urlReels,
            int? videoIndex,
            String? videoId,
            AnimationController? animationController,
            BuildContext? context)
        handleDoubleTapEvent,
    required TResult Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)
        initializeControllerEvent,
    required TResult Function(VideoPlayerController? videoController)
        onTapEvent,
    required TResult Function(String? url) getIndexFromUrl,
    required TResult Function(int? viewCount, String? videoId) viewCountEvent,
    required TResult Function(String? videoId, int? page, int? limit)
        getCommentApi,
    required TResult Function(
            String? postId, String? comment, BuildContext? context)
        writeCommentAPi,
    required TResult Function(
            BuildContext? context, String? deleteId, String? postId)
        deleteComment,
  }) {
    return viewCountEvent(viewCount, videoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? videoId, String? urlReels)? likedEvent,
    TResult? Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult? Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult? Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult? Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult? Function(VideoPlayerController? videoController)? onTapEvent,
    TResult? Function(String? url)? getIndexFromUrl,
    TResult? Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult? Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult? Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult? Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
  }) {
    return viewCountEvent?.call(viewCount, videoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? videoId, String? urlReels)? likedEvent,
    TResult Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult Function(String? urlReels, AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult Function(VideoPlayerController? videoController)? onTapEvent,
    TResult Function(String? url)? getIndexFromUrl,
    TResult Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
    required TResult orElse(),
  }) {
    if (viewCountEvent != null) {
      return viewCountEvent(viewCount, videoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikedEvent value) likedEvent,
    required TResult Function(GetReelsApi value) getReelsApi,
    required TResult Function(ListFilledEvent value) listFilledEvent,
    required TResult Function(HandleDoubleTapEvent value) handleDoubleTapEvent,
    required TResult Function(InitializeControllerEvent value)
        initializeControllerEvent,
    required TResult Function(OnTapEvent value) onTapEvent,
    required TResult Function(GetIndexFromUrl value) getIndexFromUrl,
    required TResult Function(ViewCountEvent value) viewCountEvent,
    required TResult Function(GetCommentApi value) getCommentApi,
    required TResult Function(WriteCommentAPi value) writeCommentAPi,
    required TResult Function(DeleteComment value) deleteComment,
  }) {
    return viewCountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikedEvent value)? likedEvent,
    TResult? Function(GetReelsApi value)? getReelsApi,
    TResult? Function(ListFilledEvent value)? listFilledEvent,
    TResult? Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult? Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult? Function(OnTapEvent value)? onTapEvent,
    TResult? Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult? Function(ViewCountEvent value)? viewCountEvent,
    TResult? Function(GetCommentApi value)? getCommentApi,
    TResult? Function(WriteCommentAPi value)? writeCommentAPi,
    TResult? Function(DeleteComment value)? deleteComment,
  }) {
    return viewCountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikedEvent value)? likedEvent,
    TResult Function(GetReelsApi value)? getReelsApi,
    TResult Function(ListFilledEvent value)? listFilledEvent,
    TResult Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult Function(OnTapEvent value)? onTapEvent,
    TResult Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult Function(ViewCountEvent value)? viewCountEvent,
    TResult Function(GetCommentApi value)? getCommentApi,
    TResult Function(WriteCommentAPi value)? writeCommentAPi,
    TResult Function(DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (viewCountEvent != null) {
      return viewCountEvent(this);
    }
    return orElse();
  }
}

abstract class ViewCountEvent implements ShortVideoEvent {
  const factory ViewCountEvent({final int? viewCount, final String? videoId}) =
      _$ViewCountEventImpl;

  int? get viewCount;
  String? get videoId;
  @JsonKey(ignore: true)
  _$$ViewCountEventImplCopyWith<_$ViewCountEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCommentApiImplCopyWith<$Res> {
  factory _$$GetCommentApiImplCopyWith(
          _$GetCommentApiImpl value, $Res Function(_$GetCommentApiImpl) then) =
      __$$GetCommentApiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? videoId, int? page, int? limit});
}

/// @nodoc
class __$$GetCommentApiImplCopyWithImpl<$Res>
    extends _$ShortVideoEventCopyWithImpl<$Res, _$GetCommentApiImpl>
    implements _$$GetCommentApiImplCopyWith<$Res> {
  __$$GetCommentApiImplCopyWithImpl(
      _$GetCommentApiImpl _value, $Res Function(_$GetCommentApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = freezed,
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$GetCommentApiImpl(
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetCommentApiImpl implements GetCommentApi {
  const _$GetCommentApiImpl({this.videoId, this.page, this.limit});

  @override
  final String? videoId;
  @override
  final int? page;
  @override
  final int? limit;

  @override
  String toString() {
    return 'ShortVideoEvent.getCommentApi(videoId: $videoId, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommentApiImpl &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId, page, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentApiImplCopyWith<_$GetCommentApiImpl> get copyWith =>
      __$$GetCommentApiImplCopyWithImpl<_$GetCommentApiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? videoId, String? urlReels) likedEvent,
    required TResult Function(int limit, BuildContext context, int page)
        getReelsApi,
    required TResult Function(String? urlReels, bool likeStatus)
        listFilledEvent,
    required TResult Function(
            String? urlReels,
            int? videoIndex,
            String? videoId,
            AnimationController? animationController,
            BuildContext? context)
        handleDoubleTapEvent,
    required TResult Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)
        initializeControllerEvent,
    required TResult Function(VideoPlayerController? videoController)
        onTapEvent,
    required TResult Function(String? url) getIndexFromUrl,
    required TResult Function(int? viewCount, String? videoId) viewCountEvent,
    required TResult Function(String? videoId, int? page, int? limit)
        getCommentApi,
    required TResult Function(
            String? postId, String? comment, BuildContext? context)
        writeCommentAPi,
    required TResult Function(
            BuildContext? context, String? deleteId, String? postId)
        deleteComment,
  }) {
    return getCommentApi(videoId, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? videoId, String? urlReels)? likedEvent,
    TResult? Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult? Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult? Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult? Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult? Function(VideoPlayerController? videoController)? onTapEvent,
    TResult? Function(String? url)? getIndexFromUrl,
    TResult? Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult? Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult? Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult? Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
  }) {
    return getCommentApi?.call(videoId, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? videoId, String? urlReels)? likedEvent,
    TResult Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult Function(String? urlReels, AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult Function(VideoPlayerController? videoController)? onTapEvent,
    TResult Function(String? url)? getIndexFromUrl,
    TResult Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
    required TResult orElse(),
  }) {
    if (getCommentApi != null) {
      return getCommentApi(videoId, page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikedEvent value) likedEvent,
    required TResult Function(GetReelsApi value) getReelsApi,
    required TResult Function(ListFilledEvent value) listFilledEvent,
    required TResult Function(HandleDoubleTapEvent value) handleDoubleTapEvent,
    required TResult Function(InitializeControllerEvent value)
        initializeControllerEvent,
    required TResult Function(OnTapEvent value) onTapEvent,
    required TResult Function(GetIndexFromUrl value) getIndexFromUrl,
    required TResult Function(ViewCountEvent value) viewCountEvent,
    required TResult Function(GetCommentApi value) getCommentApi,
    required TResult Function(WriteCommentAPi value) writeCommentAPi,
    required TResult Function(DeleteComment value) deleteComment,
  }) {
    return getCommentApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikedEvent value)? likedEvent,
    TResult? Function(GetReelsApi value)? getReelsApi,
    TResult? Function(ListFilledEvent value)? listFilledEvent,
    TResult? Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult? Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult? Function(OnTapEvent value)? onTapEvent,
    TResult? Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult? Function(ViewCountEvent value)? viewCountEvent,
    TResult? Function(GetCommentApi value)? getCommentApi,
    TResult? Function(WriteCommentAPi value)? writeCommentAPi,
    TResult? Function(DeleteComment value)? deleteComment,
  }) {
    return getCommentApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikedEvent value)? likedEvent,
    TResult Function(GetReelsApi value)? getReelsApi,
    TResult Function(ListFilledEvent value)? listFilledEvent,
    TResult Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult Function(OnTapEvent value)? onTapEvent,
    TResult Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult Function(ViewCountEvent value)? viewCountEvent,
    TResult Function(GetCommentApi value)? getCommentApi,
    TResult Function(WriteCommentAPi value)? writeCommentAPi,
    TResult Function(DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (getCommentApi != null) {
      return getCommentApi(this);
    }
    return orElse();
  }
}

abstract class GetCommentApi implements ShortVideoEvent {
  const factory GetCommentApi(
      {final String? videoId,
      final int? page,
      final int? limit}) = _$GetCommentApiImpl;

  String? get videoId;
  int? get page;
  int? get limit;
  @JsonKey(ignore: true)
  _$$GetCommentApiImplCopyWith<_$GetCommentApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WriteCommentAPiImplCopyWith<$Res> {
  factory _$$WriteCommentAPiImplCopyWith(_$WriteCommentAPiImpl value,
          $Res Function(_$WriteCommentAPiImpl) then) =
      __$$WriteCommentAPiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? postId, String? comment, BuildContext? context});
}

/// @nodoc
class __$$WriteCommentAPiImplCopyWithImpl<$Res>
    extends _$ShortVideoEventCopyWithImpl<$Res, _$WriteCommentAPiImpl>
    implements _$$WriteCommentAPiImplCopyWith<$Res> {
  __$$WriteCommentAPiImplCopyWithImpl(
      _$WriteCommentAPiImpl _value, $Res Function(_$WriteCommentAPiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? comment = freezed,
    Object? context = freezed,
  }) {
    return _then(_$WriteCommentAPiImpl(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
    ));
  }
}

/// @nodoc

class _$WriteCommentAPiImpl implements WriteCommentAPi {
  const _$WriteCommentAPiImpl({this.postId, this.comment, this.context});

  @override
  final String? postId;
  @override
  final String? comment;
  @override
  final BuildContext? context;

  @override
  String toString() {
    return 'ShortVideoEvent.writeCommentAPi(postId: $postId, comment: $comment, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WriteCommentAPiImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, comment, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WriteCommentAPiImplCopyWith<_$WriteCommentAPiImpl> get copyWith =>
      __$$WriteCommentAPiImplCopyWithImpl<_$WriteCommentAPiImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? videoId, String? urlReels) likedEvent,
    required TResult Function(int limit, BuildContext context, int page)
        getReelsApi,
    required TResult Function(String? urlReels, bool likeStatus)
        listFilledEvent,
    required TResult Function(
            String? urlReels,
            int? videoIndex,
            String? videoId,
            AnimationController? animationController,
            BuildContext? context)
        handleDoubleTapEvent,
    required TResult Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)
        initializeControllerEvent,
    required TResult Function(VideoPlayerController? videoController)
        onTapEvent,
    required TResult Function(String? url) getIndexFromUrl,
    required TResult Function(int? viewCount, String? videoId) viewCountEvent,
    required TResult Function(String? videoId, int? page, int? limit)
        getCommentApi,
    required TResult Function(
            String? postId, String? comment, BuildContext? context)
        writeCommentAPi,
    required TResult Function(
            BuildContext? context, String? deleteId, String? postId)
        deleteComment,
  }) {
    return writeCommentAPi(postId, comment, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? videoId, String? urlReels)? likedEvent,
    TResult? Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult? Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult? Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult? Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult? Function(VideoPlayerController? videoController)? onTapEvent,
    TResult? Function(String? url)? getIndexFromUrl,
    TResult? Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult? Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult? Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult? Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
  }) {
    return writeCommentAPi?.call(postId, comment, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? videoId, String? urlReels)? likedEvent,
    TResult Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult Function(String? urlReels, AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult Function(VideoPlayerController? videoController)? onTapEvent,
    TResult Function(String? url)? getIndexFromUrl,
    TResult Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
    required TResult orElse(),
  }) {
    if (writeCommentAPi != null) {
      return writeCommentAPi(postId, comment, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikedEvent value) likedEvent,
    required TResult Function(GetReelsApi value) getReelsApi,
    required TResult Function(ListFilledEvent value) listFilledEvent,
    required TResult Function(HandleDoubleTapEvent value) handleDoubleTapEvent,
    required TResult Function(InitializeControllerEvent value)
        initializeControllerEvent,
    required TResult Function(OnTapEvent value) onTapEvent,
    required TResult Function(GetIndexFromUrl value) getIndexFromUrl,
    required TResult Function(ViewCountEvent value) viewCountEvent,
    required TResult Function(GetCommentApi value) getCommentApi,
    required TResult Function(WriteCommentAPi value) writeCommentAPi,
    required TResult Function(DeleteComment value) deleteComment,
  }) {
    return writeCommentAPi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikedEvent value)? likedEvent,
    TResult? Function(GetReelsApi value)? getReelsApi,
    TResult? Function(ListFilledEvent value)? listFilledEvent,
    TResult? Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult? Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult? Function(OnTapEvent value)? onTapEvent,
    TResult? Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult? Function(ViewCountEvent value)? viewCountEvent,
    TResult? Function(GetCommentApi value)? getCommentApi,
    TResult? Function(WriteCommentAPi value)? writeCommentAPi,
    TResult? Function(DeleteComment value)? deleteComment,
  }) {
    return writeCommentAPi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikedEvent value)? likedEvent,
    TResult Function(GetReelsApi value)? getReelsApi,
    TResult Function(ListFilledEvent value)? listFilledEvent,
    TResult Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult Function(OnTapEvent value)? onTapEvent,
    TResult Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult Function(ViewCountEvent value)? viewCountEvent,
    TResult Function(GetCommentApi value)? getCommentApi,
    TResult Function(WriteCommentAPi value)? writeCommentAPi,
    TResult Function(DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (writeCommentAPi != null) {
      return writeCommentAPi(this);
    }
    return orElse();
  }
}

abstract class WriteCommentAPi implements ShortVideoEvent {
  const factory WriteCommentAPi(
      {final String? postId,
      final String? comment,
      final BuildContext? context}) = _$WriteCommentAPiImpl;

  String? get postId;
  String? get comment;
  BuildContext? get context;
  @JsonKey(ignore: true)
  _$$WriteCommentAPiImplCopyWith<_$WriteCommentAPiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCommentImplCopyWith<$Res> {
  factory _$$DeleteCommentImplCopyWith(
          _$DeleteCommentImpl value, $Res Function(_$DeleteCommentImpl) then) =
      __$$DeleteCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext? context, String? deleteId, String? postId});
}

/// @nodoc
class __$$DeleteCommentImplCopyWithImpl<$Res>
    extends _$ShortVideoEventCopyWithImpl<$Res, _$DeleteCommentImpl>
    implements _$$DeleteCommentImplCopyWith<$Res> {
  __$$DeleteCommentImplCopyWithImpl(
      _$DeleteCommentImpl _value, $Res Function(_$DeleteCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = freezed,
    Object? deleteId = freezed,
    Object? postId = freezed,
  }) {
    return _then(_$DeleteCommentImpl(
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
      deleteId: freezed == deleteId
          ? _value.deleteId
          : deleteId // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteCommentImpl implements DeleteComment {
  const _$DeleteCommentImpl({this.context, this.deleteId, this.postId});

  @override
  final BuildContext? context;
  @override
  final String? deleteId;
  @override
  final String? postId;

  @override
  String toString() {
    return 'ShortVideoEvent.deleteComment(context: $context, deleteId: $deleteId, postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommentImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.deleteId, deleteId) ||
                other.deleteId == deleteId) &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, deleteId, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommentImplCopyWith<_$DeleteCommentImpl> get copyWith =>
      __$$DeleteCommentImplCopyWithImpl<_$DeleteCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? videoId, String? urlReels) likedEvent,
    required TResult Function(int limit, BuildContext context, int page)
        getReelsApi,
    required TResult Function(String? urlReels, bool likeStatus)
        listFilledEvent,
    required TResult Function(
            String? urlReels,
            int? videoIndex,
            String? videoId,
            AnimationController? animationController,
            BuildContext? context)
        handleDoubleTapEvent,
    required TResult Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)
        initializeControllerEvent,
    required TResult Function(VideoPlayerController? videoController)
        onTapEvent,
    required TResult Function(String? url) getIndexFromUrl,
    required TResult Function(int? viewCount, String? videoId) viewCountEvent,
    required TResult Function(String? videoId, int? page, int? limit)
        getCommentApi,
    required TResult Function(
            String? postId, String? comment, BuildContext? context)
        writeCommentAPi,
    required TResult Function(
            BuildContext? context, String? deleteId, String? postId)
        deleteComment,
  }) {
    return deleteComment(context, deleteId, postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? videoId, String? urlReels)? likedEvent,
    TResult? Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult? Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult? Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult? Function(
            String? urlReels,
            AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult? Function(VideoPlayerController? videoController)? onTapEvent,
    TResult? Function(String? url)? getIndexFromUrl,
    TResult? Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult? Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult? Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult? Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
  }) {
    return deleteComment?.call(context, deleteId, postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? videoId, String? urlReels)? likedEvent,
    TResult Function(int limit, BuildContext context, int page)? getReelsApi,
    TResult Function(String? urlReels, bool likeStatus)? listFilledEvent,
    TResult Function(String? urlReels, int? videoIndex, String? videoId,
            AnimationController? animationController, BuildContext? context)?
        handleDoubleTapEvent,
    TResult Function(String? urlReels, AnimationController? animationController,
            VideoPlayerController? videoController)?
        initializeControllerEvent,
    TResult Function(VideoPlayerController? videoController)? onTapEvent,
    TResult Function(String? url)? getIndexFromUrl,
    TResult Function(int? viewCount, String? videoId)? viewCountEvent,
    TResult Function(String? videoId, int? page, int? limit)? getCommentApi,
    TResult Function(String? postId, String? comment, BuildContext? context)?
        writeCommentAPi,
    TResult Function(BuildContext? context, String? deleteId, String? postId)?
        deleteComment,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(context, deleteId, postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LikedEvent value) likedEvent,
    required TResult Function(GetReelsApi value) getReelsApi,
    required TResult Function(ListFilledEvent value) listFilledEvent,
    required TResult Function(HandleDoubleTapEvent value) handleDoubleTapEvent,
    required TResult Function(InitializeControllerEvent value)
        initializeControllerEvent,
    required TResult Function(OnTapEvent value) onTapEvent,
    required TResult Function(GetIndexFromUrl value) getIndexFromUrl,
    required TResult Function(ViewCountEvent value) viewCountEvent,
    required TResult Function(GetCommentApi value) getCommentApi,
    required TResult Function(WriteCommentAPi value) writeCommentAPi,
    required TResult Function(DeleteComment value) deleteComment,
  }) {
    return deleteComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LikedEvent value)? likedEvent,
    TResult? Function(GetReelsApi value)? getReelsApi,
    TResult? Function(ListFilledEvent value)? listFilledEvent,
    TResult? Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult? Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult? Function(OnTapEvent value)? onTapEvent,
    TResult? Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult? Function(ViewCountEvent value)? viewCountEvent,
    TResult? Function(GetCommentApi value)? getCommentApi,
    TResult? Function(WriteCommentAPi value)? writeCommentAPi,
    TResult? Function(DeleteComment value)? deleteComment,
  }) {
    return deleteComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LikedEvent value)? likedEvent,
    TResult Function(GetReelsApi value)? getReelsApi,
    TResult Function(ListFilledEvent value)? listFilledEvent,
    TResult Function(HandleDoubleTapEvent value)? handleDoubleTapEvent,
    TResult Function(InitializeControllerEvent value)?
        initializeControllerEvent,
    TResult Function(OnTapEvent value)? onTapEvent,
    TResult Function(GetIndexFromUrl value)? getIndexFromUrl,
    TResult Function(ViewCountEvent value)? viewCountEvent,
    TResult Function(GetCommentApi value)? getCommentApi,
    TResult Function(WriteCommentAPi value)? writeCommentAPi,
    TResult Function(DeleteComment value)? deleteComment,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(this);
    }
    return orElse();
  }
}

abstract class DeleteComment implements ShortVideoEvent {
  const factory DeleteComment(
      {final BuildContext? context,
      final String? deleteId,
      final String? postId}) = _$DeleteCommentImpl;

  BuildContext? get context;
  String? get deleteId;
  String? get postId;
  @JsonKey(ignore: true)
  _$$DeleteCommentImplCopyWith<_$DeleteCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShortVideoState {
  bool get isLike => throw _privateConstructorUsedError;
  bool get videoInitialized => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  bool get getReelsLoading => throw _privateConstructorUsedError;
  List<Data> get getReelsListN => throw _privateConstructorUsedError;
  List<bool> get likesList => throw _privateConstructorUsedError;
  List<String> get reelsList => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;
  GetReelsModel? get getReelsModel => throw _privateConstructorUsedError;
  Map<String, bool> get likedStatusMap => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  bool get hasMorePages => throw _privateConstructorUsedError;
  GetCommentsModel? get getCommentsModel => throw _privateConstructorUsedError;
  bool get commentLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShortVideoStateCopyWith<ShortVideoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortVideoStateCopyWith<$Res> {
  factory $ShortVideoStateCopyWith(
          ShortVideoState value, $Res Function(ShortVideoState) then) =
      _$ShortVideoStateCopyWithImpl<$Res, ShortVideoState>;
  @useResult
  $Res call(
      {bool isLike,
      bool videoInitialized,
      bool isPlaying,
      bool getReelsLoading,
      List<Data> getReelsListN,
      List<bool> likesList,
      List<String> reelsList,
      int likesCount,
      GetReelsModel? getReelsModel,
      Map<String, bool> likedStatusMap,
      int currentPage,
      bool hasMorePages,
      GetCommentsModel? getCommentsModel,
      bool commentLoading});
}

/// @nodoc
class _$ShortVideoStateCopyWithImpl<$Res, $Val extends ShortVideoState>
    implements $ShortVideoStateCopyWith<$Res> {
  _$ShortVideoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLike = null,
    Object? videoInitialized = null,
    Object? isPlaying = null,
    Object? getReelsLoading = null,
    Object? getReelsListN = null,
    Object? likesList = null,
    Object? reelsList = null,
    Object? likesCount = null,
    Object? getReelsModel = freezed,
    Object? likedStatusMap = null,
    Object? currentPage = null,
    Object? hasMorePages = null,
    Object? getCommentsModel = freezed,
    Object? commentLoading = null,
  }) {
    return _then(_value.copyWith(
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
      videoInitialized: null == videoInitialized
          ? _value.videoInitialized
          : videoInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      getReelsLoading: null == getReelsLoading
          ? _value.getReelsLoading
          : getReelsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      getReelsListN: null == getReelsListN
          ? _value.getReelsListN
          : getReelsListN // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      likesList: null == likesList
          ? _value.likesList
          : likesList // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      reelsList: null == reelsList
          ? _value.reelsList
          : reelsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      getReelsModel: freezed == getReelsModel
          ? _value.getReelsModel
          : getReelsModel // ignore: cast_nullable_to_non_nullable
              as GetReelsModel?,
      likedStatusMap: null == likedStatusMap
          ? _value.likedStatusMap
          : likedStatusMap // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasMorePages: null == hasMorePages
          ? _value.hasMorePages
          : hasMorePages // ignore: cast_nullable_to_non_nullable
              as bool,
      getCommentsModel: freezed == getCommentsModel
          ? _value.getCommentsModel
          : getCommentsModel // ignore: cast_nullable_to_non_nullable
              as GetCommentsModel?,
      commentLoading: null == commentLoading
          ? _value.commentLoading
          : commentLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShortVideoStateImplCopyWith<$Res>
    implements $ShortVideoStateCopyWith<$Res> {
  factory _$$ShortVideoStateImplCopyWith(_$ShortVideoStateImpl value,
          $Res Function(_$ShortVideoStateImpl) then) =
      __$$ShortVideoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLike,
      bool videoInitialized,
      bool isPlaying,
      bool getReelsLoading,
      List<Data> getReelsListN,
      List<bool> likesList,
      List<String> reelsList,
      int likesCount,
      GetReelsModel? getReelsModel,
      Map<String, bool> likedStatusMap,
      int currentPage,
      bool hasMorePages,
      GetCommentsModel? getCommentsModel,
      bool commentLoading});
}

/// @nodoc
class __$$ShortVideoStateImplCopyWithImpl<$Res>
    extends _$ShortVideoStateCopyWithImpl<$Res, _$ShortVideoStateImpl>
    implements _$$ShortVideoStateImplCopyWith<$Res> {
  __$$ShortVideoStateImplCopyWithImpl(
      _$ShortVideoStateImpl _value, $Res Function(_$ShortVideoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLike = null,
    Object? videoInitialized = null,
    Object? isPlaying = null,
    Object? getReelsLoading = null,
    Object? getReelsListN = null,
    Object? likesList = null,
    Object? reelsList = null,
    Object? likesCount = null,
    Object? getReelsModel = freezed,
    Object? likedStatusMap = null,
    Object? currentPage = null,
    Object? hasMorePages = null,
    Object? getCommentsModel = freezed,
    Object? commentLoading = null,
  }) {
    return _then(_$ShortVideoStateImpl(
      isLike: null == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool,
      videoInitialized: null == videoInitialized
          ? _value.videoInitialized
          : videoInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      getReelsLoading: null == getReelsLoading
          ? _value.getReelsLoading
          : getReelsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      getReelsListN: null == getReelsListN
          ? _value._getReelsListN
          : getReelsListN // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      likesList: null == likesList
          ? _value._likesList
          : likesList // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      reelsList: null == reelsList
          ? _value._reelsList
          : reelsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      getReelsModel: freezed == getReelsModel
          ? _value.getReelsModel
          : getReelsModel // ignore: cast_nullable_to_non_nullable
              as GetReelsModel?,
      likedStatusMap: null == likedStatusMap
          ? _value._likedStatusMap
          : likedStatusMap // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasMorePages: null == hasMorePages
          ? _value.hasMorePages
          : hasMorePages // ignore: cast_nullable_to_non_nullable
              as bool,
      getCommentsModel: freezed == getCommentsModel
          ? _value.getCommentsModel
          : getCommentsModel // ignore: cast_nullable_to_non_nullable
              as GetCommentsModel?,
      commentLoading: null == commentLoading
          ? _value.commentLoading
          : commentLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShortVideoStateImpl implements _ShortVideoState {
  const _$ShortVideoStateImpl(
      {this.isLike = false,
      this.videoInitialized = false,
      this.isPlaying = false,
      this.getReelsLoading = false,
      final List<Data> getReelsListN = const [],
      final List<bool> likesList = const [],
      final List<String> reelsList = const [],
      this.likesCount = 0,
      this.getReelsModel,
      final Map<String, bool> likedStatusMap = const {},
      this.currentPage = 1,
      this.hasMorePages = true,
      this.getCommentsModel,
      this.commentLoading = false})
      : _getReelsListN = getReelsListN,
        _likesList = likesList,
        _reelsList = reelsList,
        _likedStatusMap = likedStatusMap;

  @override
  @JsonKey()
  final bool isLike;
  @override
  @JsonKey()
  final bool videoInitialized;
  @override
  @JsonKey()
  final bool isPlaying;
  @override
  @JsonKey()
  final bool getReelsLoading;
  final List<Data> _getReelsListN;
  @override
  @JsonKey()
  List<Data> get getReelsListN {
    if (_getReelsListN is EqualUnmodifiableListView) return _getReelsListN;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_getReelsListN);
  }

  final List<bool> _likesList;
  @override
  @JsonKey()
  List<bool> get likesList {
    if (_likesList is EqualUnmodifiableListView) return _likesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likesList);
  }

  final List<String> _reelsList;
  @override
  @JsonKey()
  List<String> get reelsList {
    if (_reelsList is EqualUnmodifiableListView) return _reelsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reelsList);
  }

  @override
  @JsonKey()
  final int likesCount;
  @override
  final GetReelsModel? getReelsModel;
  final Map<String, bool> _likedStatusMap;
  @override
  @JsonKey()
  Map<String, bool> get likedStatusMap {
    if (_likedStatusMap is EqualUnmodifiableMapView) return _likedStatusMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_likedStatusMap);
  }

  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final bool hasMorePages;
  @override
  final GetCommentsModel? getCommentsModel;
  @override
  @JsonKey()
  final bool commentLoading;

  @override
  String toString() {
    return 'ShortVideoState(isLike: $isLike, videoInitialized: $videoInitialized, isPlaying: $isPlaying, getReelsLoading: $getReelsLoading, getReelsListN: $getReelsListN, likesList: $likesList, reelsList: $reelsList, likesCount: $likesCount, getReelsModel: $getReelsModel, likedStatusMap: $likedStatusMap, currentPage: $currentPage, hasMorePages: $hasMorePages, getCommentsModel: $getCommentsModel, commentLoading: $commentLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortVideoStateImpl &&
            (identical(other.isLike, isLike) || other.isLike == isLike) &&
            (identical(other.videoInitialized, videoInitialized) ||
                other.videoInitialized == videoInitialized) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.getReelsLoading, getReelsLoading) ||
                other.getReelsLoading == getReelsLoading) &&
            const DeepCollectionEquality()
                .equals(other._getReelsListN, _getReelsListN) &&
            const DeepCollectionEquality()
                .equals(other._likesList, _likesList) &&
            const DeepCollectionEquality()
                .equals(other._reelsList, _reelsList) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.getReelsModel, getReelsModel) ||
                other.getReelsModel == getReelsModel) &&
            const DeepCollectionEquality()
                .equals(other._likedStatusMap, _likedStatusMap) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.hasMorePages, hasMorePages) ||
                other.hasMorePages == hasMorePages) &&
            (identical(other.getCommentsModel, getCommentsModel) ||
                other.getCommentsModel == getCommentsModel) &&
            (identical(other.commentLoading, commentLoading) ||
                other.commentLoading == commentLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLike,
      videoInitialized,
      isPlaying,
      getReelsLoading,
      const DeepCollectionEquality().hash(_getReelsListN),
      const DeepCollectionEquality().hash(_likesList),
      const DeepCollectionEquality().hash(_reelsList),
      likesCount,
      getReelsModel,
      const DeepCollectionEquality().hash(_likedStatusMap),
      currentPage,
      hasMorePages,
      getCommentsModel,
      commentLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortVideoStateImplCopyWith<_$ShortVideoStateImpl> get copyWith =>
      __$$ShortVideoStateImplCopyWithImpl<_$ShortVideoStateImpl>(
          this, _$identity);
}

abstract class _ShortVideoState implements ShortVideoState {
  const factory _ShortVideoState(
      {final bool isLike,
      final bool videoInitialized,
      final bool isPlaying,
      final bool getReelsLoading,
      final List<Data> getReelsListN,
      final List<bool> likesList,
      final List<String> reelsList,
      final int likesCount,
      final GetReelsModel? getReelsModel,
      final Map<String, bool> likedStatusMap,
      final int currentPage,
      final bool hasMorePages,
      final GetCommentsModel? getCommentsModel,
      final bool commentLoading}) = _$ShortVideoStateImpl;

  @override
  bool get isLike;
  @override
  bool get videoInitialized;
  @override
  bool get isPlaying;
  @override
  bool get getReelsLoading;
  @override
  List<Data> get getReelsListN;
  @override
  List<bool> get likesList;
  @override
  List<String> get reelsList;
  @override
  int get likesCount;
  @override
  GetReelsModel? get getReelsModel;
  @override
  Map<String, bool> get likedStatusMap;
  @override
  int get currentPage;
  @override
  bool get hasMorePages;
  @override
  GetCommentsModel? get getCommentsModel;
  @override
  bool get commentLoading;
  @override
  @JsonKey(ignore: true)
  _$$ShortVideoStateImplCopyWith<_$ShortVideoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
