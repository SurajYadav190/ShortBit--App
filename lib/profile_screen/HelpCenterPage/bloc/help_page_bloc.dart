import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../utils/API/HttpClient.dart';
import '../model/faqModel.dart';

part 'help_page_event.dart';
part 'help_page_state.dart';

part 'help_page_bloc.freezed.dart';

class HelpPageBloc extends Bloc<HelpPageEvent, HelpPageState> {
  HelpPageBloc() : super(HelpPageState()) {
    on<HelpPageEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<FaqAPi>(faqAPi);
  }

  final _api=HttpClients();

  FutureOr<void> faqAPi(FaqAPi event, Emitter<HelpPageState> emit) async{

       await  _api.faqApiFun().then((value) {


      emit(state.copyWith(faqLoading: true));

      emit(state.copyWith(faqModel: FaqModel.fromJson(value)));

      print("eeee===>>> ${value}");

      emit(state.copyWith(faqLoading: false));


    }).onError((error, stackTrace) {
     print("Error in faqAPi===>>> ${error}");

    }) ;

  }


}
