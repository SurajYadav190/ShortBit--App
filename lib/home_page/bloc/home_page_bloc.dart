import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortbit/home_page/model/get_all_live_streem_host.dart';
import 'package:shortbit/utils/API/HttpClient.dart';

part 'home_page_bloc.freezed.dart';
part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(const HomePageState()) {
    on<AllLiveStreemApi>(_allLiveStreemApi);
  }

  HttpClients httpClients = HttpClients();

  Future<FutureOr<void>> _allLiveStreemApi(
      AllLiveStreemApi event, Emitter<HomePageState> emit) async {
    try {
      var response = await httpClients.getAllLiveHost();
      emit(state.copyWith(allLiveStreem: response));
    } catch (e) {
      log('-----homePageBloc catch----- ${e}');
    }
  }
}
