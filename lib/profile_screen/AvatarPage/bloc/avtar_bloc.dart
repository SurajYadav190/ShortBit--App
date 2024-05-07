import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/API/HttpClient.dart';
import '../model/avatarListingModel.dart';

part 'avtar_event.dart';
part 'avtar_state.dart';
part 'avtar_bloc.freezed.dart';

class AvtarBloc extends Bloc<AvtarEvent, AvtarState> {
  AvtarBloc() : super(const AvtarState()) {

    on<AvatarListingApi>(avatarListingApi);

  }

  final _api =HttpClients();
  FutureOr<void> avatarListingApi(AvatarListingApi event, Emitter<AvtarState> emit)async {

  await _api.avtarListingApiFun().then((value) {

    emit(state.copyWith(avatarListingModel: AvatarListingModel.fromJson(value)));


  }).onError((error, stackTrace) {

    log("Error in avatarListingApi===>>>> $error ");

  });

  }
}
