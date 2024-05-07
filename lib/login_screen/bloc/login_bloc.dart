import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shortbit/bottom_navigation/bottom_navigation.dart';
import 'package:shortbit/one_to_one_video_call/one_to_one_video_call.dart';
import 'package:shortbit/utils/API/HttpClient.dart';

import '../../create_account/signup_model/GetProfileModel.dart';
import '../../create_account/signup_model/VerifyOtpModel.dart';
import '../../location/get_location_screen.dart';
import '../../select_interests/select_interests.dart';
import '../../tell_us_about_yourself/tell_us_about_yourself.dart';
import '../../upload_your_photos/upload_your_photos.dart';
import '../../utils/common_methods/navigation_method.dart';
import '../../utils/constants.dart';
import '../model/forgot_password_otp.dart';
import '../model/login_model.dart';
import '../model/password_reset.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<PasswordHide>(_passwordHide);
    on<LoginApi>(loginApi);
    on<ForgotPasswordRequest>(forgotPasswordRequest);
    on<VerifyAccountOtpApi>(verifyAccountOtpApi);
    on<Password_reset>(password_reset);
    on<GetProfileApi>(_getProfileApi);
  }

  HttpClients _api = HttpClients();

  FutureOr<void> _passwordHide(PasswordHide event, Emitter<LoginState> emit) {
    emit(state.copyWith(passwordHide: event.isPasswordHide));
  }

  FutureOr<void> loginApi(LoginApi event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isLogin: false));
    var result = await _api.loginApi(
        email: event.email.toString(),
        password: event.password.toString(),
        ismail: event.isMail);
    if (result?.status == true) {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      _prefs.setString(UserToken, result!.data!.token.toString());
      log('-------user token ${_prefs.getString(UserToken)}');
      emit(state.copyWith(loginModel: result, isLogin: true));
    }
  }

  FutureOr<void> forgotPasswordRequest(
      ForgotPasswordRequest event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isForgotPasswordOtp: false));
    var result = await _api.forgot_password_otp(
        phone_number: event.phone_number, ismail: event.isMail);
    if (result?.status == true) {
      emit(
          state.copyWith(forgotPasswordOtp: result, isForgotPasswordOtp: true));
    }
  }

  FutureOr<void> verifyAccountOtpApi(
      VerifyAccountOtpApi event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isOtpVerify: false));
    var result = await _api.verifyOtp(
        phone_number: event.phone_number, otp: event.otp, ismail: event.isMail);
    if (result?.status == true) {
      emit(state.copyWith(verifyOtpModel: result, isOtpVerify: true));
    }
  }

  FutureOr<void> password_reset(
      Password_reset event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isPasswordReset: false));
    var result = await _api.reset_password(
        phone_number: event.phone_number,
        password: event.password,
        ismail: event.isMail);
    if (result?.status == true) {
      emit(state.copyWith(passwordReset: result, isPasswordReset: true));
    }
  }

  FutureOr<void> _getProfileApi(
      GetProfileApi event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isProfile: false));
    var result = await _api.getProfile();
    if (result?.status == true) {
      emit(state.copyWith(getProfileModel: result, isProfile: true));
      navPushRemove(context: event.context, action: BottomNavigation());

      // navPushRemove(
      //     context: event.context,
      //     action: OneToOneVideoCall(
      //       // channelName: widget.hostId,
      //       channelName: '1234',
      //     ));
    } else {
      emit(state.copyWith(getProfileModel: result, isProfile: false));
      print("fdfdggfgf==== ${result?.count}");
      Navigator.pop(event.context);
      if (result?.count == "0") {
        navPush(context: event.context, action: TellUsAboutYourSelf());
      } else if (result?.count == "1") {
        navPush(context: event.context, action: SelectInterest());
      } else if (result?.count == "2") {
        navPush(context: event.context, action: UploadYourPhotos());
      } else if (result?.count == "3") {
        navPush(context: event.context, action: GetLocationScreen());
      } else {}
    }
  }
}
