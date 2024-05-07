part of 'host_live_call_bloc.dart';

@freezed
class HostLiveCallState with _$HostLiveCallState {
  const factory HostLiveCallState({
    EndLiveRoom? endLiveRoom,
    CreateLiveRoom? createLiveRoom,
    OnGoingLiveRoom? onGoingLiveRoom,
    GetLiveRoomData? getLiveRoomData,
    @Default(false) hasRoomId,
    @Default(false) isOnGoingLiveStreem,
  }) = _HostLiveCallState;
}
