import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortbit/host_live_call/host_live_call_new.dart';
import 'package:shortbit/host_live_call/model/create_live_room.dart';
import 'package:shortbit/host_live_call/model/end_live_room.dart';
import 'package:shortbit/host_live_call/model/get_live_room_data.dart';
import 'package:shortbit/host_live_call/model/on_going_live_video.dart';
import 'package:shortbit/utils/API/HttpClient.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';

part 'host_live_call_bloc.freezed.dart';
part 'host_live_call_event.dart';
part 'host_live_call_state.dart';

class HostLiveCallBloc extends Bloc<HostLiveCallEvent, HostLiveCallState> {
  HostLiveCallBloc() : super(const HostLiveCallState()) {
    on<ApiCreateLiveRoom>(apiCreateLiveRoom);
    on<ApiEndLiveRoom>(apiEndLiveRoom);
    on<ApiOnGoingLive>(apiOnGoingLive);
    on<ApiGetLiveRoomData>(apiGetLiveRoomData);
  }

  HttpClients httpClients = HttpClients();

  Future<FutureOr<void>> apiCreateLiveRoom(
      ApiCreateLiveRoom event, Emitter<HostLiveCallState> emit) async {
    emit(state.copyWith(hasRoomId: false));

    try {
      var response = await httpClients.createHostLive();
      emit(state.copyWith(createLiveRoom: response));
      log('--sid--${state.createLiveRoom?.data?.sId}');

      if (state.createLiveRoom?.data?.sId != null) {
        emit(state.copyWith(hasRoomId: true));

        navPush(
            context: event.context,
            action: HostLiveCallNew(
              channelName: state.createLiveRoom!.data!.sId.toString(),
              startTime: state.createLiveRoom!.data!.startTime.toString(),
              hostId: state.createLiveRoom!.data!.hostId!.toString(),
            ));
      }
    } catch (e) {
      log('-----homePageBloc catch----- ${e}');
    }
  }

  Future<FutureOr<void>> apiEndLiveRoom(
      ApiEndLiveRoom event, Emitter<HostLiveCallState> emit) async {
    log('in the event');
    log('in the event ${event.room_id.toString()}');

    String roomId = event.room_id.toString();
    try {
      var response = await httpClients.endHostLive(room_id: roomId);

      log('--sdfsdf----response ${response}');
      emit(state.copyWith(endLiveRoom: response));
    } catch (e) {
      log('-----homePageBloc catch----- ${e}');
    }
  }

  Future<FutureOr<void>> apiOnGoingLive(
      ApiOnGoingLive event, Emitter<HostLiveCallState> emit) async {
    try {
      var response = await httpClients.ongoingHostLive();
      emit(state.copyWith(onGoingLiveRoom: response));

      log('isOnGoingLiveStreem --- ${response?.message}');

      log('this is ongoing api');
    } catch (e) {
      log('-----homePageBloc catch----- ${e}');
    }
  }

  resetBloc() {
    emit(HostLiveCallState());

    log('==state.onGoingLiveRoom=== ${state.onGoingLiveRoom}');
  }

  Future<FutureOr<void>> apiGetLiveRoomData(
      ApiGetLiveRoomData event, Emitter<HostLiveCallState> emit) async {
    try {
      var response =
          await httpClients.getLiveRoomDataAPI(roomId: event.roomId.toString());
      emit(state.copyWith(getLiveRoomData: response));

      log('----response ${response}');

      log('------------getLiveRoomData ${state.getLiveRoomData}');
    } catch (e) {
      log('-----homePageBloc catch----- ${e}');
    }
  }
}
