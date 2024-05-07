

import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shortbit/search_location/search_location.dart';
import 'package:shortbit/utils/custom_widgets/app_background.dart';

import '../tell_us_about_yourself/bloc/user_update_details_bloc.dart';
import '../utils/app_colors.dart';
import '../utils/common_methods/navigation_method.dart';
import '../utils/custom_widgets/custom_app_button.dart';
import '../utils/custom_widgets/custom_bounce.dart';
import '../utils/custom_widgets/toast.dart';

class GetLocationScreen extends StatefulWidget {
  const GetLocationScreen({super.key});

  @override
  State<GetLocationScreen> createState() => _GetLocationScreenState();
}

class _GetLocationScreenState extends State<GetLocationScreen> {
  bool isGpsEnabled = false;
  String cityName="";
  String lat="";
  String long="";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: AppBackground(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            CircleAvatar(
              radius: 70,
              backgroundImage:
                  AssetImage("assets/images/circular_location_icon.png"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'What is Your Location?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF4D4C4D),
                fontSize: 24,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'To Find Nearby Matches, Share Your Location\n with Us.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF4E4E4E),
                fontSize: 14,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CustomAppButton(
              title: 'Allow Location Access',
              onPressed: () async{
                await handleLocationPermission();
                getCurrentPosition();
                log("location==>>>>>1");
                // if(==true){
                //   log("location==>>>>>1");
                //
                //   log("location==>>>>>2");
                // }


                //  navPush(context: context, action: GetLocationScreen());
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomBounce(
              onPressed: () {
                navPush(context: context, action: SearchLocationScreen());
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Enter Location Manually',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF6000FF),
                    fontSize: 18,
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  LocationPermission? locationPermission;
  Future<bool> handleLocationPermission() async {
    bool serviceEnabled;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      print('bgbnjdbnjdnjbnfdb');
      CustomFlutterToast.showToast(
          message: 'Location Permission is disabled", "Please enable the permission',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    }
    locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.deniedForever) {
        CustomFlutterToast.showToast(
            message:
            "Location Permission is permanently disabled"
            "Please enable the permission",
            backgroundColor: primaryBlueColor,
            textColor: Colors.white);
      }
      return false;
    }
    return true;
  }



  Future<bool> checkPermissionStatus() async {
    final PermissionStatus permissionStatus = await Permission.locationWhenInUse.status;
    log("hhhhhh${permissionStatus == PermissionStatus.granted}");
    return permissionStatus == PermissionStatus.granted;
  }



  late Position currentPosition;
  String currentAddress="";
  Future<void> getCurrentPosition() async {
    // final hasPermission = await handleLocationPermission();
    // if (!hasPermission) return;
    //getLocationLoading(true);
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      currentPosition = position;
      getCurrentLocationFromLatLong(position);
      print(currentPosition);
    }).catchError((error) {
      debugPrint(error);
    });
  }

  ///get address from current lat and long

  Future<void> getCurrentLocationFromLatLong(Position position) async {
    final userUpdateDetailsBloc = context.read<UserUpdateDetailsBloc>();
    try {
      await placemarkFromCoordinates(
          currentPosition.latitude, currentPosition.longitude,
          localeIdentifier: "en")
          .then((List<Placemark> placeMarks) {
        Placemark place = placeMarks[0];

        currentAddress=
        '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}';
       // location.value.text = currentAddress.value;
        log("location==>>>>>${currentAddress}");
        cityName =place.locality.toString();
        lat =currentPosition.latitude.toString();
        long =currentPosition.longitude.toString();

        Map<String,String> locationString ={
          "name":cityName,
          "lat":lat,
          "long":long
        };
        String locationJson= json.encode(locationString);
        userUpdateDetailsBloc.add(UpdateProfileApi(gender: "",
            dob: "", interest: "", location: locationJson, isHitFor: "location", context: context));

      }).catchError((e) {
        debugPrint(e.toString());
      });
    } finally {
      //getLocationLoading(false);
    }
  }
}
