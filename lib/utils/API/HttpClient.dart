import 'dart:core';
import 'dart:developer';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shortbit/home_page/model/get_all_live_streem_host.dart';
import 'package:shortbit/host_live_call/model/create_live_room.dart';
import 'package:shortbit/host_live_call/model/end_live_room.dart';
import 'package:shortbit/host_live_call/model/get_live_room_data.dart';
import 'package:shortbit/host_live_call/model/on_going_live_video.dart';
import 'package:shortbit/join_live_video/model/gifts.dart';
import 'package:shortbit/join_live_video/model/join_room_api.dart';
import 'package:shortbit/join_live_video/model/send_gifts_model.dart';
import 'package:shortbit/message_screen/model/getAllHostModel.dart';
import 'package:shortbit/message_screen/model/message_group_model.dart';
import 'package:shortbit/utils/API/end_points.dart';

import '../../create_account/signup_model/GetProfileModel.dart';
import '../../create_account/signup_model/VerifyOtpModel.dart';
import '../../create_account/signup_model/signup_model.dart';
import '../../host_profile/model/host_profile_model.dart';
import '../../login_screen/model/forgot_password_otp.dart';
import '../../login_screen/model/login_model.dart';
import '../../login_screen/model/password_reset.dart';
import '../../shortVedioScreen/models/getComments.dart';
import '../../shortVedioScreen/models/getReelsModel.dart';
import '../../tell_us_about_yourself/model/interest_list_model.dart';
import '../../tell_us_about_yourself/model/update_profile_model.dart';
import '../../terms_and_conditions/model/terms_and_condition_model.dart';
import 'api_base_helper.dart';

class HttpClients {
  ApiBaseHelper _apiHelper = ApiBaseHelper();
  late String _deviceID, _deviceToken = '';
  String _deviceType = 'WEB';

  Future _init() async {
    final _prefs = await SharedPreferences.getInstance();
    _deviceToken = _prefs.getString('deviceToken') ?? '';
    try {
      _deviceID = await PlatformDeviceId.getDeviceId ?? '';
    } on PlatformException {
      _deviceID = '';
    }
    _deviceToken = _prefs.getString('deviceToken') ?? '';
    if (Platform.isAndroid) {
      _deviceType = 'Android';
    } else if (Platform.isIOS) {
      _deviceType = 'IOS';
    }
  }

  Future<GetAllLiveStreemHost?> getAllLiveHost() async {
    // Map reqBody = {"phone": mobile};
    final response = await _apiHelper.get(EndPoints.live_room);
    try {
      return GetAllLiveStreemHost.fromJson(response);
    } catch (e) {
      log('---Catch HttpClient--- ${e}');
      return null;
    }
  }

  Future<LoginModel?> loginApi(
      {required String email,
      required String password,
      required ismail}) async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    String? fcmToken = await messaging.getToken();

    log('--------- device token ${fcmToken}');

    Map reqBody;
    if (ismail == true) {
      reqBody = {
        "email": email,
        "password": password,
        "device_token": fcmToken.toString()
      };
    } else {
      reqBody = {
        "phone_number": email,
        "password": password,
        "device_token": fcmToken.toString()
      };
    }
    final response = await _apiHelper.post(EndPoints.login, reqBody);
    try {
      return LoginModel.fromJson(response);
    } catch (e) {
      return null;
    }
  }

  Future<GetReelsModel?> getReelsApiFun(int limit, int page) async {
    String? _deviceID = '';
    _deviceID = await PlatformDeviceId.getDeviceId;
    log('-----device Id---  ${_deviceID}');

    final response =
        await _apiHelper.get(EndPoints.getReels + "?limit=$limit&page=$page");
    // final response = await _apiHelper.get(EndPoints.getReels+"?limit=$limit",reqBody);
    try {
      return GetReelsModel.fromJson(response);
    } catch (e) {
      return null;
    }
  }

  Future<SignUpModel?> SignUpApi(
      {required String name,
      required String email,
      required String password,
      required String phone_number}) async {
    Map reqBody = {
      "name": name,
      "email": email,
      "password": password,
      "phone_number": phone_number
    };
    final response = await _apiHelper.post(EndPoints.signup, reqBody);
    try {
      return SignUpModel.fromJson(response);
    } catch (e) {
      return null;
    }
  }

  Future<VerifyOtpModel?> verifyOtp(
      {required String phone_number,
      required String otp,
      required ismail}) async {
    Map reqBody;
    if (ismail == true) {
      reqBody = {"email": phone_number, "otp": otp};
    } else {
      reqBody = {"phone_number": phone_number, "otp": otp};
    }
    final response =
        await _apiHelper.post(EndPoints.verify_signup_otp, reqBody);
    try {
      return VerifyOtpModel.fromJson(response);
    } catch (e) {
      return null;
    }
  }

  Future<dynamic> likeApiFun(String videoId) async {
    String? _deviceID = '';
    _deviceID = await PlatformDeviceId.getDeviceId;
    log('-----device Id---  ${_deviceID}');

    final response = await _apiHelper.get(EndPoints.likeUnlike + videoId);

    return response;
  }

  Future<dynamic> countApi(String videoId) async {
    String? _deviceID = '';
    _deviceID = await PlatformDeviceId.getDeviceId;
    log('-----device Id---  ${_deviceID}');

    final response = await _apiHelper.get(EndPoints.videoView + videoId);

    return response;
  }

  Future<GetCommentsModel?> getCommentsApiFun(
      {required int limit, required int page, required String videoId}) async {
    String? _deviceID = '';
    _deviceID = await PlatformDeviceId.getDeviceId;
    log('-----device Id---  ${_deviceID}');

    final response = await _apiHelper.get(
        // EndPoints.comment + "?limit=$limit&page=$page"+"?${videoId}", reqBody);
        EndPoints.comment + "?post_id=${videoId}");
    try {
      return GetCommentsModel.fromJson(response);
    } catch (e) {
      return null;
    }
  }

  Future<ForgotPasswordOtp?> forgot_password_otp(
      {required String phone_number, required bool ismail}) async {
    log("====>>>sssssss$ismail");
    Map reqBody;
    if (ismail == true) {
      reqBody = {"email": phone_number};
    } else {
      reqBody = {"phone_number": phone_number};
    }

    final response = await _apiHelper.post(EndPoints.forget_password, reqBody);
    try {
      return ForgotPasswordOtp.fromJson(response);
    } catch (e) {
      return null;
    }
  }

  Future<PasswordReset?> reset_password(
      {required String phone_number,
      required String password,
      required bool ismail}) async {
    Map reqBody;
    if (ismail == true) {
      reqBody = {"email": phone_number, "password": password};
    } else {
      reqBody = {"phone_number": phone_number, "password": password};
    }

    final response = await _apiHelper.post(EndPoints.reset_password, reqBody);
    try {
      return PasswordReset.fromJson(response);
    } catch (e) {
      return null;
    }
  }

  Future<GetProfileModel?> getProfile() async {
    final response = await _apiHelper.get(EndPoints.getProfile);
    try {
      return GetProfileModel.fromJson(response);
    } catch (e) {
      log('---catch ${e}');

      return null;
    }
  }

  Future<UpdateProfileModel?> updateProfile({
    required String? gender,
    required String? dob,
    required String? interest,
    required String? location,
  }) async {
    final response = await _apiHelper.multiPartCreateFilePatch(
      url: EndPoints.updateProfile,
      gender: gender,
      dob: dob,
      interest: interest,
      location: location!,
    );
    try {
      return UpdateProfileModel.fromJson(response);
    } catch (e) {
      log("===>>sjhjshdg=${e.toString()}");
      return null;
    }
  }

  Future<UpdateProfileModel?> uploadImage({
    required File? image,
  }) async {
    final response = await _apiHelper.multiPartImagePatch(
        url: EndPoints.updateProfile, image: image);
    try {
      return UpdateProfileModel.fromJson(response);
    } catch (e) {
      log("===>>sjhjshdg=${e.toString()}");
      return null;
    }
  }

  Future<InterestListModel?> getInterestList() async {
    final response = await _apiHelper.get(EndPoints.interest_list);
    try {
      return InterestListModel.fromJson(response);
    } catch (e) {
      log('---catch ${e}');
      return null;
    }
  }

  Future<JoinRoomApi?> joinLiveVideo({required String roomId}) async {
    Map reqBody = {"room_id": roomId};
    final response = await _apiHelper.postToken(EndPoints.join_room, reqBody);
    try {
      return JoinRoomApi.fromJson(response);
    } catch (e) {
      log('---Catch HttpClient--- ${e}');
      return null;
    }
  }

  Future<JoinRoomApi?> leaveLiveVideo({required String roomId}) async {
    Map reqBody = {"room_id": roomId};
    final response = await _apiHelper.postToken(EndPoints.leave_room, reqBody);
    try {
      return JoinRoomApi.fromJson(response);
    } catch (e) {
      log('---Catch HttpClient--- ${e}');
      return null;
    }
  }

  Future<Gifts?> getGifts() async {
    final response = await _apiHelper.get(EndPoints.gift);
    try {
      return Gifts.fromJson(response);
    } catch (e) {
      log('---Catch HttpClient--- ${e}');
      return null;
    }
  }

  Future<SendGiftsModel?> sendGiftsAPI({
    required String to_user_id,
    required String room_id,
    required String gift_id,
  }) async {
    Map reqBody = {
      "to_user_id": to_user_id.toString(),
      "room_id": room_id.toString(),
      "gift_id": gift_id.toString()
    };

    final response = await _apiHelper.postToken(EndPoints.send_gift, reqBody);
    try {
      return SendGiftsModel.fromJson(response);
    } catch (e) {
      log('---Catch HttpClient--- ${e}');
      return null;
    }
  }

  Future<CreateLiveRoom?> createHostLive() async {
    final response = await _apiHelper.postToken(EndPoints.live_room, {});
    try {
      return CreateLiveRoom.fromJson(response);
    } catch (e) {
      log('---Catch HttpClient--- ${e}');
      return null;
    }
  }

  Future<EndLiveRoom?> endHostLive({required String room_id}) async {
    Map reqBody = {"room_id": room_id};

    final response = await _apiHelper.patch(EndPoints.live_room, reqBody);
    try {
      return EndLiveRoom.fromJson(response);
    } catch (e) {
      log('---Catch HttpClient--- ${e}');
      return null;
    }
  }

  Future<OnGoingLiveRoom?> ongoingHostLive() async {
    final response =
        await _apiHelper.getWithoutRequest(EndPoints.ongoing_live_room);
    try {
      return OnGoingLiveRoom.fromJson(response);
    } catch (e) {
      log('---Catch HttpClient--- ${e}');
      return null;
    }
  }

  Future<GetLiveRoomData?> getLiveRoomDataAPI({required String roomId}) async {
    log('======sadf ${EndPoints.get_live_room_data + roomId}');

    final response = await _apiHelper
        .getWithoutRequest(EndPoints.get_live_room_data + roomId);

    log('asdfasdff');
    return GetLiveRoomData.fromJson(response);

    // try {
    //   return GetLiveRoomData.fromJson(response);
    // } catch (e) {
    //   log('---Catch HttpClient--- ${e}');
    //   return null;
    // }
  }

  Future<TermsAndConditionModel?> getTermsAndCondition() async {
    final response =
        await _apiHelper.getWithoutRequest(EndPoints.ongoing_live_room);
    try {
      return TermsAndConditionModel.fromJson(response);
    } catch (e) {
      log('---Catch HttpClient--- ${e}');
      return null;
    }
  }

  Future<dynamic> writeComment(String postId, String comment) async {
    String? _deviceID = '';
    _deviceID = await PlatformDeviceId.getDeviceId;
    log('-----device Id---  ${_deviceID}');

    Map<String, String> reqBody = {
      "post_id": postId.toString(),
      "text": comment.toString()
    };

    final response = await _apiHelper.postToken(EndPoints.comment, reqBody);

    return response;
  }

  Future<dynamic> deleteComment(String deleteId) async {
    String? _deviceID = '';
    _deviceID = await PlatformDeviceId.getDeviceId;
    log('-----device Id---  ${_deviceID}');

    Map<String, String> reqBody = {
      // "post_id": postId.toString(),
      // "text": comment.toString()
    };

    final response =
        await _apiHelper.deleteFun(EndPoints.comment + "/${deleteId}");

    return response;
  }

  Future<dynamic> faqApiFun() async {
    String? _deviceID = '';
    _deviceID = await PlatformDeviceId.getDeviceId;
    log('-----device Id---  ${_deviceID}');

    final response = await _apiHelper.get(EndPoints.faq);
    // final response = await _apiHelper.get(EndPoints.getReels+"?limit=$limit",reqBody);

    return response;
  }

  Future<dynamic> walletApiFun() async {
    String? _deviceID = '';
    _deviceID = await PlatformDeviceId.getDeviceId;
    log('-----device Id---  ${_deviceID}');

    final response =
        await _apiHelper.get(EndPoints.wallet + "?type=transaction");
    // final response = await _apiHelper.get(EndPoints.getReels+"?limit=$limit",reqBody);
    return response;
  }

  Future<GetAllHostModel?> getAllHostApiCall() async {
    final response = await _apiHelper.getWithoutRequest(EndPoints.host);
    try {
      return GetAllHostModel.fromJson(response);
    } catch (e) {
      log('---Catch HttpClient--- ${e}');

      return null;
    }
  }

  Future<MessageGroup?> getAllMessageGroup() async {
    final response =
        await _apiHelper.getWithoutRequest(EndPoints.message_group);
    try {
      return MessageGroup.fromJson(response);
    } catch (e) {
      log('---Catch HttpClient--- ${e}');

      return null;
    }
  }

  Future<HostProfileModel?> getHostProfile({required String hostId}) async {
    final response = await _apiHelper.get(EndPoints.hostProfile + hostId);
    try {
      return HostProfileModel.fromJson(response);
    } catch (e) {
      log('---catch ${e}');

      return null;
    }
  }

  Future<dynamic> avtarListingApiFun() async {
    String? _deviceID = '';
    _deviceID = await PlatformDeviceId.getDeviceId;
    log('-----device Id---  ${_deviceID}');

    final response = await _apiHelper.get(EndPoints.avatar);
    // final response = await _apiHelper.get(EndPoints.getReels+"?limit=$limit",reqBody);

    return response;
  }

  Future<dynamic> updateProfileApiFun(var data) async {
    String? _deviceID = '';
    _deviceID = await PlatformDeviceId.getDeviceId;
    log('-----device Id---  ${_deviceID}');

    final response = await _apiHelper.patch(EndPoints.getProfile, data);

    // final response = await _apiHelper.get(EndPoints.getReels+"?limit=$limit",reqBody);

    return response;
  }

  Future<dynamic> uploadProfileImage(File profileImage) async {
    final response = await _apiHelper.multipartWithOnlyImage(
        EndPoints.getProfile, profileImage);

    // final response = await _apiHelper.get(EndPoints.getReels+"?limit=$limit",reqBody);

    return response;
  }
}
