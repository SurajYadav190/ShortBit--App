part of 'short_video_bloc.dart';

@freezed
abstract class ShortVideoState with _$ShortVideoState {
  const factory ShortVideoState({

    @Default(false) bool isLike,
    @Default(false) bool videoInitialized,
    @Default(false) bool isPlaying,
    @Default(false) bool getReelsLoading,
    @Default([]) List<Data>  getReelsListN,

     @Default([])  List<bool> likesList,
     @Default([])  List<String> reelsList,
    @Default(0) int  likesCount,
    GetReelsModel ? getReelsModel,
    @Default({}) Map<String, bool> likedStatusMap,

    @Default(1) int currentPage,
    @Default(true) bool hasMorePages,

     GetCommentsModel ? getCommentsModel,
    @Default(false) bool commentLoading,


  }) = _ShortVideoState;

}
