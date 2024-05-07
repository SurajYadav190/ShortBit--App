import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/API/HttpClient.dart';
import '../model/host_profile_model.dart';

part 'host_profile_bloc.freezed.dart';
part 'host_profile_event.dart';
part 'host_profile_state.dart';

class HostProfileBloc extends Bloc<HostProfileEvent, HostProfileState> {
  HostProfileBloc() : super(const HostProfileState()) {
    on<GetProfileApi>(_getProfileApi);
  }

  HttpClients _api = HttpClients();

  FutureOr<void> _getProfileApi(
      GetProfileApi event, Emitter<HostProfileState> emit) async {
    emit(state.copyWith(isProfile: false));
    var result = await _api.getHostProfile(hostId: event.hostId);
    if (result?.status == true) {
      emit(state.copyWith(hostProfileModel: result, isProfile: true));
    } else {}
  }
}
