import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortbit/utils/API/HttpClient.dart';

import '../../../create_account/bloc/create_account_bloc.dart';
import '../../../utils/common_methods/navigation_method.dart';

part 'updateprofile_event.dart';
part 'updateprofile_state.dart';
part 'updateprofile_bloc.freezed.dart';

class UpdateprofileBloc extends Bloc<UpdateprofileEvent, UpdateprofileState> {
  UpdateprofileBloc() : super(const UpdateprofileState()) {
    on<UpdateprofileEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<UpdateProfileApi>(updateProfileApi);
    on<UploadProfileImage>(uploadProfileImage);
  }

  final _api=HttpClients();
  FutureOr<void> updateProfileApi(UpdateProfileApi event, Emitter<UpdateprofileState> emit)async {



    await _api.updateProfileApiFun(event.data).then((value) {

      final bloc1=event.context.read<CreateAccountBloc>();

      bloc1.add(GetProfileEditApi(context: event.context));

       navPop(context: event.context);


    }).onError((error, stackTrace) {


    });

  }

  FutureOr<void> uploadProfileImage(UploadProfileImage event, Emitter<UpdateprofileState> emit) async{

    await   _api.uploadProfileImage(event.profileImage).then((value) {



      if(value['status']==true){


      }



    }).onError((error, stackTrace) {

      log("Error in api===>>> $error");

    });
  }
}
