part of 'host_live_call_bloc.dart';

@freezed
class HostLiveCallEvent with _$HostLiveCallEvent {
  const factory HostLiveCallEvent.apiCreateLiveRoom({
    required BuildContext context,
  }) = ApiCreateLiveRoom;

  const factory HostLiveCallEvent.apiEndLiveRoom({
    required String room_id,
  }) = ApiEndLiveRoom;

  const factory HostLiveCallEvent.apiOnGoingLive() = ApiOnGoingLive;

  const factory HostLiveCallEvent.apiGetLiveRoomData({
    required String roomId,
  }) = ApiGetLiveRoomData;
}
