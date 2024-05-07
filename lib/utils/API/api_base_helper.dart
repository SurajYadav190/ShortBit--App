import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:mime_type/mime_type.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shortbit/utils/constants.dart';

class ApiBaseHelper {
  final Connectivity connectivity = Connectivity();

  String globalHostToken =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2NWIwZGI2NTFkYzk3NDQ1NjU2MzQ3MTgiLCJpYXQiOjE3MDYxNjA1OTF9.9pJ9gaB0xpBgrt2zqy57qosMPC3tBrusM4DTfINnwBQ";

  Future<dynamic> post(String url, Map reqBody) async {
    if (kDebugMode) {
      print('url----- ${url}');
      print('reqBody----- ${reqBody}');
    }
    var responseJson;
    try {
      final response = await http.post(Uri.parse(url),
          body: jsonEncode(reqBody),
          headers: {HttpHeaders.contentTypeHeader: 'application/json'});
      responseJson = _returnResponse(response);
    } on SocketException {
      throw Exception('Check Your Network Connection');
    }
    print('KKKKKKKKKK========>>>----- $responseJson');
    return responseJson;
  }

  Future<dynamic> postToken(String url, Map reqBody) async {
    var responseJson;
    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      String? tokenIdd = '';
      tokenIdd = _prefs.getString(UserToken);
      log("data==>" + reqBody.toString());
      log("url==>" + url);
      // debugPrint("user tokenId==>" + tokenIdd!);
      final response =
          await http.post(Uri.parse(url), body: jsonEncode(reqBody), headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        'Authorization': 'Bearer ${tokenIdd}'
      });

      responseJson = _returnResponse(response);
    } on SocketException {
      Fluttertoast.showToast(msg: "Please check your Connection");
      throw Exception('Check Your Network Connection');
    }
    return responseJson;
  }

  Future<dynamic> get(String url) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? tokenIdd = '';
   // String? tokenIdd = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2NWIwZGI2NTFkYzk3NDQ1NjU2MzQ3MTgiLCJpYXQiOjE3MDYxNjA1OTF9.9pJ9gaB0xpBgrt2zqy57qosMPC3tBrusM4DTfINnwBQ';
    tokenIdd = await _prefs.getString(UserToken);

    if (kDebugMode) {
      print(url);
      // print(data);
      print('tokenId>>   ${tokenIdd}');
    }
    var responseJson;
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${tokenIdd}',
        },
      );
      return responseJson = _returnResponse(response);
    } on SocketException {
      Fluttertoast.showToast(msg: "Please check your Connection");
      throw Exception('Check Your Network Connection');
    }
  }


  Future<dynamic> getWithoutRequest(String url) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? tokenIdd;
    tokenIdd = await _prefs.getString(UserToken);

    if (kDebugMode) {
      print(url);
      print('tokenId======>>${tokenIdd}');
    }
    var responseJson;
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          'Authorization': 'Bearer ${tokenIdd}',
        },
      );
      return responseJson = _returnResponse(response);
    } on SocketException {
      Fluttertoast.showToast(msg: "Please check your Connection");
      throw Exception('Check Your Network Connection');
    }
  }

  Future<dynamic> deleteFun(
    String url,
  ) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? tokenIdd;
    tokenIdd = await _prefs.getString(UserToken);

    if (kDebugMode) {
      print("for delete" + url);
      print('tokenId======>>${tokenIdd}');
    }
    var responseJson;
    try {
      final response = await http.delete(
        Uri.parse(url),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          'Authorization': 'Bearer ${tokenIdd}',
        },
      );
      return responseJson = _returnResponse(response);
    } on SocketException {
      Fluttertoast.showToast(msg: "Please check your Connection");
      throw Exception('Check Your Network Connection');
    }
  }

  Future<dynamic> patch(String url, Map reqBody) async {
    var responseJson;
    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      String? tokenIdd;
      tokenIdd = await _prefs.getString(UserToken);

      log('-----reequest ${reqBody}');
      final response =
          await http.patch(Uri.parse(url), body: reqBody, headers: {
        // HttpHeaders.contentTypeHeader: 'application/json',
        'Authorization': 'Bearer ${tokenIdd}',
      });
      return responseJson = _returnResponse(response);
    } on SocketException {
      Fluttertoast.showToast(msg: "Please check your Connection");
      throw Exception('Check Your Network Connection');
    }
  }

  Future<dynamic> multiPartCreateFilePatch({
    required String? gender,
    required String? dob,
    required String? interest,
    required String location,
    required String url,
  }) async {
    // debugPrint("REQUEST  FIELDS-->$file");
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? tokenIdd = '';
    tokenIdd = _prefs.getString(UserToken);
    var responseJson;

    var request = http.MultipartRequest('Patch', Uri.parse(url));
    debugPrint("REQUEST-->$request");

    request.headers.addAll({'Authorization': "Bearer $tokenIdd"});

    request.fields['gender'] = gender ?? "";
    request.fields['dob'] = dob ?? "";
    request.fields['interest'] = interest.toString();
    request.fields['location'] = location.toString();

    /*for (File imageFile in file) {
      request.files.add(http.MultipartFile.fromBytes(
          'file', file.first.readAsBytesSync(),
          filename: imageFile.path.split('/').last));
    }*/
    print(request.fields);
    print(request.files);

    try {
      var response = await request.send();
      var responded = await http.Response.fromStream(response);
      responseJson = _returnResponse(responded);
    } on SocketException {
      //Get.to(() => const NoNetworkScreen());
    } on HttpException {
      throw Exception("Something went wrong");
    } on FormatException {
      throw Exception("Bad response format");
    }

    return responseJson;
  }

  Future<dynamic> multiPartImagePatch(
      {required String url, required File? image}) async {
    // debugPrint("REQUEST  FIELDS-->$file");
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? tokenIdd = '';
    tokenIdd = _prefs.getString(UserToken);
    var responseJson;

    var request = http.MultipartRequest('Patch', Uri.parse(url));
    debugPrint("REQUEST-->$request");

    request.headers.addAll({'Authorization': "Bearer $tokenIdd"});
    String? mimetype = mime(image!.path);
    String mimee = mimetype!.split('/')[0];
    String type = mimetype!.split('/')[1];

    request.files.add(http.MultipartFile.fromBytes(
        'image', image.readAsBytesSync(),
        contentType: MediaType(mimee, type),
        filename: image.path.toString().split('/').last));

    print(request.fields);
    print("===>>>ll${request.files.length}");
    print("===>>>ll${image.path}");

    try {
      var response = await request.send();
      var responded = await http.Response.fromStream(response);
      responseJson = _returnResponse(responded);
    } on SocketException {
      //Get.to(() => const NoNetworkScreen());
    } on HttpException {
      throw Exception("Something went wrong");
    } on FormatException {
      throw Exception("Bad response format");
    }
    return responseJson;
  }

  Future<dynamic> multipartWithOnlyImage(String url, File profileImg) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var token=pref.getString("token");
    String? tokenIdd =token;
    //     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2NWFmNjE1Y2U1ZTBjNGI4ZWFiYzQ5ZjIiLCJpYXQiOjE3MDU5OTI1Nzd9.i4yyg78HdpO4UJP9RUClXVS-OIhMoZ8gL4XeVZDM_1U';

    // String? tokenIdd =
    //     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2NWI5MmZiYWNkYTc0NmYwYTE2MzVjZWYiLCJpYXQiOjE3MDY2MzUyMDl9.OSka3ymyioEPRHOJU35fI99bJZA4N5IfHg6jMkxclc8';

    if (kDebugMode) {
      log("Url=>>>  $url");
      log("profileImage>>>  $profileImg");
      log("Token=>>  $tokenIdd");
    }

    var headers = {'Authorization': 'Bearer $tokenIdd'};

    dynamic responseJson;

    var request = await http.MultipartRequest(
      'PATCH',
      Uri.parse(url),
    );
    String? mimetype = mime(profileImg.path);
    String mimee = mimetype!.split('/')[0];
    String type = mimetype.split('/')[1];

    request.files.add(http.MultipartFile.fromBytes(
        "image", profileImg.readAsBytesSync(),
        contentType: MediaType(mimee, type),
        filename: profileImg.path.toString().split('/').last));

    request.headers.addAll(headers);
    //  http.StreamedResponse response = await request.send();

    try {
      var response = await request.send();
      var responded = await http.Response.fromStream(response);
      responseJson = _returnResponse(responded);
    } on SocketException {
      //Get.to(() => const NoNetworkScreen());
    } on HttpException {
      throw Exception("Something went wrong");
    } on FormatException {
      throw Exception("Bad response format");
    }

    if (kDebugMode) {
      log("ApiResponse=>>> $responseJson");
    }
    return responseJson;
  }


  // _authFailure() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   prefs.setString('token', "");
  //   Get.offUntil(
  //     MaterialPageRoute(
  //       builder: (ctx) => LoginView(),
  //     ),
  //     (route) => true,
  //   );
  // }

  Future<dynamic> OxFoxrdDict(Map reqBody, String wordId) async {
    var responseJson;
    var url =
        "https://od-api.oxforddictionaries.com/api/v2/entries/en-gb/$wordId";
    try {
      var response = await http.get(Uri.parse(url), headers: {
        HttpHeaders.contentTypeHeader: "application/json",
        "app_id": "d8731aa2",
        "app_key": "56dda96aefb4413334fedbcabe82c1d3"
      });
      responseJson = _returnResponse(response);
    } on SocketException {
      Fluttertoast.showToast(msg: "Please check your Connection");
      throw Exception('Check Your Network Connection');
    } catch (e) {
      print(e);
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    if (kDebugMode) {
      log("response statusCode ==>" + response.statusCode.toString());
      log("response ==>" + response.body.toString());
    }
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 201:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        var responseJson = json.decode(response.body.toString());
        Fluttertoast.showToast(msg: responseJson['message']);
        return responseJson;
        throw BadRequestException(response.body.toString());
      case 401:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 404:
        var responseJson = json.decode(response.body.toString());
        Fluttertoast.showToast(msg: responseJson['message']);
        return responseJson;
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occurred while Communication with Server with StatusCode: ${response.statusCode}');
    }
  }
}

class FetchDataException extends CustomException {
  FetchDataException([message])
      : super(message, "Error During Communication: ");
}

class BadRequestException extends CustomException {
  BadRequestException([message]) : super(message, "Invalid Request: ");
}

class CommunicationException extends CustomException {
  CommunicationException([message]) : super(message, "Invalid Request: ");
}

class UnauthorisedException extends CustomException {
  UnauthorisedException([message]) : super(message, "Unauthorised: ");
}

class InvalidInputException extends CustomException {
  InvalidInputException([message]) : super(message, "Invalid Input: ");
}

class CustomException implements Exception {
  final _message;
  final _prefix;

  CustomException([this._message, this._prefix]);

  String toString() {
    return "$_prefix$_message";
  }
}
