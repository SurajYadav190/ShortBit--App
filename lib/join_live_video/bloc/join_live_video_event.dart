part of 'join_live_video_bloc.dart';

@freezed
class JoinLiveVideoEvent with _$JoinLiveVideoEvent {
  const factory JoinLiveVideoEvent.joinLiveVideoApi({
    required String roomId,
  }) = JoinLiveVideoApi;

  const factory JoinLiveVideoEvent.leaveLiveVideoApi(
      {required String roomId,
      required RtcEngine engine,
      required BuildContext context}) = LeaveLiveVideoApi;

  const factory JoinLiveVideoEvent.getGifts() = GetGifts;

  const factory JoinLiveVideoEvent.sendGifts({
    required String to_user_id,
    required String room_id,
    required String gift_id,
    required BuildContext context,
  }) = SendGifts;

  const factory JoinLiveVideoEvent.turnIsGiftSendCelebrationFalse() =
      TurnIsGiftSendCelebrationFalse;
}
