part of 'short_video_bloc.dart';

@freezed
class ShortVideoEvent with _$ShortVideoEvent {

  const factory ShortVideoEvent.likedEvent({
    String ? videoId,
    String ? urlReels,

  }) = LikedEvent;
  const factory ShortVideoEvent.getReelsApi({
   required int  limit,
    required BuildContext context,
  required int page,
}) = GetReelsApi;
  const factory ShortVideoEvent.listFilledEvent({
    String ? urlReels,
    @Default(false) bool likeStatus
}) = ListFilledEvent;

  const factory ShortVideoEvent.handleDoubleTapEvent({
    String ? urlReels,
    int ? videoIndex,
    String ?videoId,
    AnimationController ? animationController,
    BuildContext ? context
  }) = HandleDoubleTapEvent;


  const factory ShortVideoEvent.initializeControllerEvent({
    String ? urlReels,
    AnimationController ? animationController,
    VideoPlayerController? videoController
  }) = InitializeControllerEvent;

  const factory ShortVideoEvent.onTapEvent({

    VideoPlayerController? videoController
  }) = OnTapEvent;

  const factory ShortVideoEvent.getIndexFromUrl({

    String ? url
}) = GetIndexFromUrl;


  const factory ShortVideoEvent.viewCountEvent({
    int ? viewCount,
    String ?videoId,

   }) = ViewCountEvent;


  /// comments
   const factory ShortVideoEvent.getCommentApi({
    String ? videoId,
     int ?page,
     int ?limit,

}) = GetCommentApi;

   const factory ShortVideoEvent.writeCommentAPi({
    String ? postId,
     String ? comment,
     BuildContext ? context

}) = WriteCommentAPi;

   const factory ShortVideoEvent.deleteComment({
    BuildContext ? context,
     String ? deleteId,
     String ? postId,
}) = DeleteComment;



}
