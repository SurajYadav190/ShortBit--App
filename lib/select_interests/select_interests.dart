import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';
import 'package:shortbit/utils/custom_widgets/app_background.dart';

import '../tell_us_about_yourself/bloc/user_update_details_bloc.dart';
import '../tell_us_about_yourself/model/interest_list_model.dart';
import '../utils/app_colors.dart';
import '../utils/custom_widgets/custom_app_button.dart';
import '../utils/custom_widgets/custom_bounce.dart';
import '../utils/custom_widgets/toast.dart';

class SelectInterest extends StatefulWidget {
  const SelectInterest({super.key});

  @override
  State<SelectInterest> createState() => _SelectInterestState();
}

class _SelectInterestState extends State<SelectInterest> {
  List<Data> interestList = [];
  List<String> selectedInterestList = [];

  @override
  void initState() {
    // TODO: implement initState
    getInterestList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userUpdateDetailsBloc = context.read<UserUpdateDetailsBloc>();
    return Scaffold(
      body: AppBackground(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomBounce(
                  onPressed: () {
                    navPop(context: context);
                  },
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage("assets/images/circular_back_btn.png"),
                  ),
                ),
                Container(
                  height: 12,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Image.asset(
                    "assets/images/pro_two.png",
                  ),
                ),
                Text(
                  "2/3",
                  style: TextStyle(fontSize: 14, color: primaryBlueColor),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Select up to 5 interests',
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
              'Discover Meaningful Connections by Selecting \n Your Interests',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF4E4E4E),
                fontSize: 14,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w400,
              ),
            ),
            BlocConsumer<UserUpdateDetailsBloc, UserUpdateDetailsState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              buildWhen: (previous, current) {
                if (previous.interestListModel != current.isGetInterestList) {
                  interestList = current.interestListModel!.data!;
                  return true;
                } else {
                  return false;
                }
              },
              builder: (context, state) {
                return state.interestListModel == null
                    ? SizedBox()
                    : GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 14 / 3,
                          mainAxisSpacing: 6,
                          crossAxisSpacing: 6,
                        ),
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: state.interestListModel!.data!.length,
                        itemBuilder: (context, index) {
                          if (index >= 0 && index < interestList.length) {
                            return CustomBounce(
                              onPressed: () {
                                interestList[index].isSelected =
                                    !interestList[index].isSelected;
                                setState(() {
                                  if (!selectedInterestList.contains(
                                      '"${interestList[index].sId}"')) {
                                    selectedInterestList
                                        .add('"${interestList[index].sId}"');
                                  } else {
                                    selectedInterestList
                                        .remove('"${interestList[index].sId}"');
                                  }
                                  log("list===>>${selectedInterestList}");
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: interestList[index].isSelected
                                      ? primaryBlueColor
                                      : Colors.white,
                                  border: Border.all(
                                      color: primaryBlueColor, width: 2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      interestList[index].name.toString(),
                                      style: TextStyle(
                                        color: interestList[index].isSelected
                                            ? Colors.white
                                            : primaryBlueColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          } else {
                            // Handle the case where the index is out of bounds
                            return SizedBox();
                          }
                        },

                        // crossAxisCount: 3,
                        // shrinkWrap: true,
                        // mainAxisSpacing: 6,
                        // childAspectRatio: 3,
                        // crossAxisSpacing: 6,
                        // children: List.generate(state.interestListModel!.data!.length, (index) {
                        //   return
                        //
                        //
                        //   Container(
                        //           decoration: BoxDecoration(
                        //             color: primaryBlueColor,
                        //             /* border: Border.all(color: Colors.black, width: 4),*/
                        //             borderRadius: BorderRadius.circular(20),
                        //           ),
                        //           child: Row(
                        //             mainAxisAlignment: MainAxisAlignment.center,
                        //
                        //       children: [
                        //               //Image.asset(""),
                        //               Text(
                        //                 interestList[index].name,
                        //                 style: TextStyle(
                        //                     color: Colors.white,
                        //                     fontSize: 12,
                        //                     fontWeight: FontWeight.bold),
                        //               )
                        //             ],
                        //           ),
                        //         );
                        // }),
                      );
              },
            ),
            SizedBox(
              height: 50,
            ),
            BlocConsumer<UserUpdateDetailsBloc, UserUpdateDetailsState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              buildWhen: (previous, current) {
                if (current.isInterestUpdated != previous.isInterestUpdated) {
                  log('in if ');

                  return true;
                } else {
                  log('in else ');
                  return false;
                }
              },
              builder: (context, state) {
                return CustomAppButton(
                  title: 'Next',
                  onPressed: () {
                    if(isValid()){
                      userUpdateDetailsBloc.add(UpdateProfileApi(
                          gender: "",
                          dob: "",
                          interest: selectedInterestList.toString(),
                          location: "",
                          isHitFor: "interest",
                          context: context));
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  bool isValid(){
    if(selectedInterestList.isEmpty){
      CustomFlutterToast.showToast(
          message: 'Please select your interests',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    }
    if(selectedInterestList.length > 5){
      CustomFlutterToast.showToast(
          message: 'Please select only up to five interests',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    }
    return true;
  }

  void getInterestList() {
    final userUpdateDetailsBloc = context.read<UserUpdateDetailsBloc>();
    userUpdateDetailsBloc.add(InterestListApi());
  }
}
