import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../utils/API/HttpClient.dart';
import '../model/walletModel.dart';

part 'bloc_wallet_event.dart';
part 'bloc_wallet_state.dart';

part 'bloc_wallet_bloc.freezed.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc() : super(WalletState()) {
    on<WalletEvent>((event, emit) {
      // TODO: implement event handler
    });

     on<WalletApi>(walletApi);
  }

  final _api =HttpClients();
  FutureOr<void> walletApi(WalletApi event, Emitter<WalletState> emit) async{

   await _api.walletApiFun().then((value) {

   emit(state.copyWith(walletModel:WalletModel.fromJson(value) ));

   }).onError((error, stackTrace) {

  print("Error in walletApi==>> ${error}");

   });
  }
}
