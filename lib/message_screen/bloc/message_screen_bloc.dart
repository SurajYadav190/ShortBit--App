import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortbit/message_screen/model/getAllHostModel.dart';
import 'package:shortbit/message_screen/model/message_group_model.dart';
import 'package:shortbit/utils/API/HttpClient.dart';

part 'message_screen_bloc.freezed.dart';
part 'message_screen_event.dart';
part 'message_screen_state.dart';

class MessageScreenBloc extends Bloc<MessageScreenEvent, MessageScreenState> {
  MessageScreenBloc() : super(const MessageScreenState()) {
    on<GetAllHostApi>(_getAllHostApi);
    on<GetAllMessageGroupApi>(_getAllMessageGroupApi);
  }

  HttpClients _api = HttpClients();

  Future<FutureOr<void>> _getAllHostApi(
      GetAllHostApi event, Emitter<MessageScreenState> emit) async {
    var result = await _api.getAllHostApiCall();

    emit(state.copyWith(getAllHostModel: result));
  }

  FutureOr<void> _getAllMessageGroupApi(
      GetAllMessageGroupApi event, Emitter<MessageScreenState> emit) async {
    var result = await _api.getAllMessageGroup();

    emit(state.copyWith(messageGroup: result));
  }
}
