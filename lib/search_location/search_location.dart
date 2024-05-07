import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_places_flutter/model/prediction.dart';
import 'package:shortbit/utils/custom_widgets/app_background.dart';
import 'package:shortbit/utils/custom_widgets/customAppBar.dart';

import '../tell_us_about_yourself/bloc/user_update_details_bloc.dart';
import '../utils/app_colors.dart';
import '../utils/common_methods/navigation_method.dart';
import '../utils/custom_widgets/custom_app_button.dart';
import '../utils/custom_widgets/custom_bounce.dart';

class SearchLocationScreen extends StatefulWidget {
  const SearchLocationScreen({super.key});

  @override
  State<SearchLocationScreen> createState() => _SearchLocationScreenState();
}

class _SearchLocationScreenState extends State<SearchLocationScreen> {
  String cityName="";
  String lat="";
  String long="";

  final TextEditingController _searchController = TextEditingController();
  TextEditingController controller = TextEditingController();
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:  CustomBounce(
          onPressed: (){
            navPop(context: context);
          },
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/images/circular_back_btn.png"),
            ),
          ),
        ),
        title:  Text("Enter Your Location",style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w600,)),
        centerTitle: true,
      ),
      body: AppBackground(
        child: Column(
          children: [
           /* Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // Add padding around the search bar
                // Use a Material design search bar
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    // Add a clear button to the search bar
                    suffixIcon: IconButton(
                      icon: Container(
                          width: 23,
                          height: 24,
                          child: Image.asset("assets/images/search_cross_icon.png",fit: BoxFit.fill,)),
                      onPressed: () => _searchController.clear(),
                    ),
                    // Add a search icon or button to the search bar
                    prefixIcon: IconButton(
                      icon: Container(
                        width: 24,
                          height: 24,
                          child: Image.asset("assets/images/search_icon.png",fit: BoxFit.fill,)),
                      onPressed: () {
                        // Perform the search here
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                        borderSide:   BorderSide(color: lightWhiteColor)
                    ),
                  ),
                ),
                color: lightWhiteColor,
              ),
            ),*/
            placesAutoCompleteTextField()
          ],
        ),
      ),
    );
  }

  placesAutoCompleteTextField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),

      child: GooglePlaceAutoCompleteTextField(
        textEditingController: controller,
        googleAPIKey:"",
        inputDecoration: InputDecoration(
          hintText: "Search your location",
          border: InputBorder.none,
          enabledBorder: InputBorder.none,

        ),
        debounceTime: 400,
        countries: ["in", "fr"],
        isLatLngRequired: false,
        getPlaceDetailWithLatLng: (Prediction prediction) {
          print("placeDetails" + prediction.lat.toString());
        },

        itemClick: (Prediction prediction) {
          controller.text = prediction.description ?? "";
          lat =prediction.lat.toString();
          long = prediction.lng.toString();
          cityName =prediction.description ?? "";


          log('--prediction---- ${prediction.description}');
          log('--lat---- ${lat}');
          log('--long---- ${long}');

          controller.selection = TextSelection.fromPosition(
              TextPosition(offset: prediction.description?.length ?? 0));
          continueBottomSheet(context);
        },
        seperatedBuilder: Divider(),
        containerHorizontalPadding: 10,

        // OPTIONAL// If you want to customize list view item builder
        itemBuilder: (context, index, Prediction prediction) {
          return Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(
                  width: 7,
                ),
                Expanded(child: Text("${prediction.description??""}"))
              ],
            ),
          );
        },

        isCrossBtnShown: true,

        // default 600 ms ,
      ),
    );
  }

  Future<void> continueBottomSheet(BuildContext context) {
    final userUpdateDetailsBloc = context.read<UserUpdateDetailsBloc>();
    return showModalBottomSheet<void>(
      backgroundColor: Colors.white,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SizedBox(
              height: 200,
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                CustomAppButton(
                  title: 'Continue',
                  onPressed: () {
                    Map<String,String> locationString ={
                      "name":cityName,
                      "lat":lat,
                      "long":long
                    };
                    String locationJson= json.encode(locationString);
                    userUpdateDetailsBloc.add(UpdateProfileApi(gender: "",
                        dob: "", interest: "", location: locationJson, isHitFor: "location", context: context));
                    Navigator.pop(context);

                  },
                ),

                  ],
                ),
              )),
        );
      },
    );
  }
}
