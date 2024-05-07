part of 'join_live_video_bloc.dart';

@freezed
class JoinLiveVideoState with _$JoinLiveVideoState {
  const factory JoinLiveVideoState({
    JoinRoomApi? joinRoomApi,
    Gifts? gifts,
    SendGiftsModel? sendGiftsModel,
    @Default(false) isRoomAPILeave,
    @Default(false) isGiftSendCelebration,
  }) = _JoinLiveVideoState;
}
