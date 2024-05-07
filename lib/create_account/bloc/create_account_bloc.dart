import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../tell_us_about_yourself/tell_us_about_yourself.dart';
import '../../terms_and_conditions/model/terms_and_condition_model.dart';
import '../../utils/API/HttpClient.dart';
import '../../utils/common_methods/navigation_method.dart';
import '../../utils/constants.dart';
import '../signup_model/GetProfileModel.dart';
import '../signup_model/VerifyOtpModel.dart';
import '../signup_model/signup_model.dart';

part 'create_account_bloc.freezed.dart';

part 'create_account_event.dart';

part 'create_account_state.dart';

class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  CreateAccountBloc() : super(const CreateAccountState()) {
    on<CreateAccountEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<PasswordHide>(_passwordHide);
    on<CreateAccountApi>(_createAccountApi);
    on<VerifyCreateAccountOtpApi>(_verifyCreateAccountOtpApi);
    on<GetProfileApi>(_getProfileApi);
    on<GetProfileEditApi>(getProfileEditApi);
    on<GetTermsAndCondition>(_getTermsAndCondition);
    on<GetUser>(_getUser);
  }

  HttpClients _api = HttpClients();

  FutureOr<void> _passwordHide(
      PasswordHide event, Emitter<CreateAccountState> emit) {
    emit(state.copyWith(passwordHide: event.isPasswordHide));
  }

  FutureOr<void> _createAccountApi(
      CreateAccountApi event, Emitter<CreateAccountState> emit) async {
    emit(state.copyWith(isSingnUpApiHit: false));
    var result = await _api.SignUpApi(
        name: event.name,
        email: event.email,
        password: event.password,
        phone_number: event.phone_number);

    if (result?.status == true) {
      emit(state.copyWith(signUpModel: result, isSingnUpApiHit: true));
      log('-------issignup ${state.isSingnUpApiHit}');
    } else {}
  }

  FutureOr<void> _verifyCreateAccountOtpApi(
      VerifyCreateAccountOtpApi event, Emitter<CreateAccountState> emit) async {
    emit(state.copyWith(isOtpVerify: false));
    var result = await _api.verifyOtp(
        phone_number: event.phone_number, otp: event.otp, ismail: false);
    if (result?.status == true) {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      _prefs.setString(UserToken, result!.data!.token.toString());

      log('-------user token ${_prefs.getString(UserToken)}');
      emit(state.copyWith(verifyOtpModel: result, isOtpVerify: true));
    }
  }

  FutureOr<void> _getProfileApi(
      GetProfileApi event, Emitter<CreateAccountState> emit) async {
    emit(state.copyWith(isProfileStatus: false));

    var result = await _api.getProfile();

    if (result?.status == true) {
      navPushRemove(context: event.context, action: TellUsAboutYourSelf());
      // emit(state.copyWith(getProfileModel: result, isProfileStatus: true));
    } else {
      navPushRemove(context: event.context, action: TellUsAboutYourSelf());
      //emit(state.copyWith(getProfileModel: result, isProfileStatus: false));
      print("fdfdggfgf==== ${result?.count}");
      /* Navigator.pop(event.context);
      if (result?.count == "0") {
        Navigator.pop(event.context);
        navPush(context: event.context, action: TellUsAboutYourSelf());
      } else if (result?.count == "1") {
        Navigator.pop(event.context);
        navPush(context: event.context, action: SelectInterest());
      } else if (result?.count == "2") {
        Navigator.pop(event.context);
        navPush(context: event.context, action: UploadYourPhotos());
      } else if (result?.count == "3") {
        Navigator.pop(event.context);
        navPush(context: event.context, action: GetLocationScreen());
      }*/
    }
  }

  FutureOr<void> _getTermsAndCondition(
      GetTermsAndCondition event, Emitter<CreateAccountState> emit) async {
    emit(state.copyWith(isTermsAndCondition: false));
    var result = await _api.getTermsAndCondition();
    if (result?.status == true) {
      emit(state.copyWith(
          termsAndConditionModel: result, isTermsAndCondition: true));
    }
  }

  Future<FutureOr<void>> _getUser(
      GetUser event, Emitter<CreateAccountState> emit) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var result = await _api.getProfile();
    emit(state.copyWith(getProfileModel: result));

    prefs.setString(Role, state.getProfileModel!.data!.role.toString());
  }

  FutureOr<void> getProfileEditApi(
      GetProfileEditApi event, Emitter<CreateAccountState> emit) async {
    var result = await _api.getProfile();
    emit(state.copyWith(getProfileModel: result));
  }
}
