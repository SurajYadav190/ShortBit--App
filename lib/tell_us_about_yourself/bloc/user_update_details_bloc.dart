import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortbit/location/get_location_screen.dart';

import '../../bottom_navigation/bottom_navigation.dart';
import '../../select_interests/select_interests.dart';
import '../../upload_your_photos/upload_your_photos.dart';
import '../../utils/API/HttpClient.dart';
import '../../utils/common_methods/navigation_method.dart';
import '../model/interest_list_model.dart';
import '../model/update_profile_model.dart';

part 'user_update_details_bloc.freezed.dart';
part 'user_update_details_event.dart';
part 'user_update_details_state.dart';

class UserUpdateDetailsBloc
    extends Bloc<UserUpdateDetailsEvent, UserUpdateDetailsState> {
  UserUpdateDetailsBloc() : super(const UserUpdateDetailsState()) {
    on<NameApi>(nameApi);
    on<ChangeGender>(changeGender);
    on<UpdateProfileApi>(updateProfileApi);
    on<InterestListApi>(interestListApi);
    on<UploadImageApi>(uploadImageApi);
  }

  final _api = HttpClients();

  FutureOr<void> nameApi(NameApi event, Emitter<UserUpdateDetailsState> emit) {}

  FutureOr<void> changeGender(
      ChangeGender event, Emitter<UserUpdateDetailsState> emit) {
    emit(state.copyWith(btnMale: event.male, btnFemale: event.female));
  }

  FutureOr<void> updateProfileApi(
      UpdateProfileApi event, Emitter<UserUpdateDetailsState> emit) async {
    if (event.isHitFor == "gender") {
      emit(state.copyWith(isGenderUpdated: false));
    } else if (event.isHitFor == "interest") {
      emit(state.copyWith(isInterestUpdated: false));
    } else if (event.isHitFor == "location") {
      emit(state.copyWith(isLocationUpdated: false));
    }

    var result = await _api.updateProfile(
        gender: event.gender,
        dob: event.dob,
        interest: event.interest,
        location: event.location);
    log("======>>>jkkkkkk${result?.message}");
    if (result?.status == true) {
      if (event.isHitFor == "gender") {
        navPush(context: event.context, action: SelectInterest());
        emit(state.copyWith(updateProfileModel: result, isGenderUpdated: true));
      } else if (event.isHitFor == "interest") {
        navPush(context: event.context, action: UploadYourPhotos());
        emit(state.copyWith(
            updateProfileModel: result, isInterestUpdated: true));
      } else if (event.isHitFor == "location") {
        navPushRemove(context: event.context, action: BottomNavigation());
        emit(state.copyWith(
            updateProfileModel: result, isLocationUpdated: true));
      }
    } else {}
  }

  FutureOr<void> interestListApi(
      InterestListApi event, Emitter<UserUpdateDetailsState> emit) async {
    emit(state.copyWith(isGetInterestList: false));
    var result = await _api.getInterestList();
    if (result?.status == true) {
      emit(state.copyWith(interestListModel: result, isGetInterestList: true));
    } else {}
  }

  FutureOr<void> uploadImageApi(
      UploadImageApi event, Emitter<UserUpdateDetailsState> emit) async {
    emit(state.copyWith(isImageUpdated: false));
    var result = await _api.uploadImage(image: event.image);
    if (result?.status == true) {
      emit(state.copyWith(updateProfileModel: result, isImageUpdated: true));
      navPush(context: event.context, action: GetLocationScreen());
    } else {}
  }
}
