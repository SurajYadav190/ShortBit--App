import 'dart:async';
import 'dart:developer';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lottie/lottie.dart';
import 'package:shortbit/join_live_video/model/gifts.dart';
import 'package:shortbit/join_live_video/model/join_room_api.dart';
import 'package:shortbit/join_live_video/model/send_gifts_model.dart';
import 'package:shortbit/utils/API/HttpClient.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';

part 'join_live_video_bloc.freezed.dart';
part 'join_live_video_event.dart';
part 'join_live_video_state.dart';

class JoinLiveVideoBloc extends Bloc<JoinLiveVideoEvent, JoinLiveVideoState> {
  JoinLiveVideoBloc() : super(const JoinLiveVideoState()) {
    on<JoinLiveVideoApi>(_joinLiveVideoApi);
    on<LeaveLiveVideoApi>(_leaveLiveVideoApi);
    on<GetGifts>(_getGifts);
    on<SendGifts>(_sendGifts);
    on<TurnIsGiftSendCelebrationFalse>(_turnIsGiftSendCelebrationFalse);
  }

  HttpClients httpClients = HttpClients();

  FutureOr<void> _joinLiveVideoApi(
      JoinLiveVideoApi event, Emitter<JoinLiveVideoState> emit) async {
    try {
      var response =
          await httpClients.joinLiveVideo(roomId: event.roomId.toString());
      emit(state.copyWith(joinRoomApi: response));
    } catch (e) {
      log('-----JoinLiveVideoBloc catch----- ${e}');
    }
  }

  FutureOr<void> _leaveLiveVideoApi(
      LeaveLiveVideoApi event, Emitter<JoinLiveVideoState> emit) async {
    emit(state.copyWith(isRoomAPILeave: false));
    try {
      var response =
          await httpClients.leaveLiveVideo(roomId: event.roomId.toString());
      emit(state.copyWith(joinRoomApi: response, isRoomAPILeave: true));

      event.engine.leaveChannel();
      // log('-----event.engine----rohit ${event.engine.runtimeTyp}');
      event.engine.destroy();
      navPop(context: event.context);
    } catch (e) {
      log('-----JoinLiveVideoBloc catch----- ${e}');
    }
  }

  Future<FutureOr<void>> _getGifts(
      GetGifts event, Emitter<JoinLiveVideoState> emit) async {
    try {
      var response = await httpClients.getGifts();
      emit(state.copyWith(gifts: response));
    } catch (e) {
      log('-----JoinLiveVideoBloc catch----- ${e}');
    }
  }

  Future<FutureOr<void>> _sendGifts(
      SendGifts event, Emitter<JoinLiveVideoState> emit) async {
    emit(state.copyWith(isGiftSendCelebration: false));
    try {
      var response = await httpClients.sendGiftsAPI(
          to_user_id: event.to_user_id.toString(),
          room_id: event.room_id.toString(),
          gift_id: event.gift_id.toString());
      log('-------isgift 0--- ${state.isGiftSendCelebration}');

      emit(state.copyWith(
          sendGiftsModel: response, isGiftSendCelebration: true));

      log('-------isgift 1--- ${state.isGiftSendCelebration}');

      if (state.sendGiftsModel?.status == true) {
        final fToast = FToast();
        fToast.init(event.context);

        fToast.showToast(
            toastDuration: Duration(seconds: 7),
            gravity: ToastGravity.TOP,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(event.context).viewInsets.bottom),
              child: Lottie.asset(
                  'assets/lottie_animation/gifts_send_animation.json',
                  height: MediaQuery.of(event.context).size.height * 0.5,
                  width: MediaQuery.of(event.context).size.height * 0.5),
            ));
      }

      navPop(context: event.context);
      // Fluttertoast.showToast(msg: state.sendGiftsModel!.message!);
    } catch (e) {
      emit(state.copyWith(isGiftSendCelebration: false));
      log('-----JoinLiveVideoBloc catch----- ${e}');
    }
  }

  FutureOr<void> _turnIsGiftSendCelebrationFalse(
      TurnIsGiftSendCelebrationFalse event, Emitter<JoinLiveVideoState> emit) {
    log('----in the flase');
    log('-------in the flase 1--- ${state.isGiftSendCelebration}');

    if (state.isGiftSendCelebration == true) {
      emit(state.copyWith(isGiftSendCelebration: false));
    }
  }
}
