import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:shortbit/tell_us_about_yourself/bloc/user_update_details_bloc.dart';
import 'package:shortbit/utils/custom_widgets/app_background.dart';

import '../select_interests/select_interests.dart';
import '../utils/app_colors.dart';
import '../utils/common_methods/navigation_method.dart';
import '../utils/custom_widgets/custom_app_button.dart';
import '../utils/custom_widgets/custom_bounce.dart';
import '../utils/custom_widgets/toast.dart';

class TellUsAboutYourSelf extends StatefulWidget {
  const TellUsAboutYourSelf({super.key});

  @override
  State<TellUsAboutYourSelf> createState() => _TellUsAboutYourSelfState();
}

class _TellUsAboutYourSelfState extends State<TellUsAboutYourSelf> {
  bool btnMale = false;
  bool btnFemale = false;
  bool isDateSelected = false;
  DateTime? _selectedDate;

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
                    "assets/images/pro_one.png",
                  ),
                ),
                Text(
                  "1/3",
                  style: TextStyle(fontSize: 14, color: primaryBlueColor),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Tell us about Yourself',
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
              'To give you a better experience we need\n to know your gender & Age',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF4E4E4E),
                fontSize: 14,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            BlocConsumer<UserUpdateDetailsBloc, UserUpdateDetailsState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              buildWhen: (previous, current) {
                return true;
               /* if (current.btnMale != previous.btnMale &&
                    current.btnFemale != previous.btnFemale) {
                  return true;
                } else {
                  return false;
                }*/
              },
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomBounce(
                      onPressed: () {
                        btnMale = true;
                        btnFemale = false;
                        userUpdateDetailsBloc.add(
                            ChangeGender(male: btnMale, female: btnFemale));

                        /* setState(() {

                    });*/
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 25,
                                height: 25,
                                child: Image.asset(
                                  "assets/images/male_icon.png",
                                  color: state.btnMale == true
                                      ? Colors.white
                                      : Colors.black,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: state.btnMale == true
                                      ? Colors.white
                                      : Colors.black),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: state.btnMale == true
                                ? primaryBlueColor
                                : Colors.black12),
                      ),
                    ),
                    CustomBounce(
                      onPressed: () {
                        btnMale = false;
                        btnFemale = true;
                        userUpdateDetailsBloc.add(
                            ChangeGender(male: btnMale, female: btnFemale));
                        /*setState(() {

                        });*/
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 25,
                                height: 25,
                                child: Image.asset(
                                  "assets/images/female_icon.png",
                                  color: state.btnFemale == true
                                      ? Colors.white
                                      : Colors.black,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: state.btnFemale == true
                                      ? Colors.white
                                      : Colors.black),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: state.btnFemale == true
                                ? primaryBlueColor
                                : Colors.black12),
                      ),
                    )
                  ],
                );
              },
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: DatePickerWidget(
                looping: false,
                // default is not looping
                // firstDate: DateTime.now(),
                firstDate: DateTime(1980, 1, 1),
                lastDate: DateTime.now(),
//              initialDate: DateTime.now(),// DateTime(1994),
                dateFormat:
                    // "MM-dd(E)",
                    "dd/MMMM/yyyy",
                locale: DatePicker.localeFromString('en'),
                onChange: (DateTime newDate, _) {
                  setState(() {
                    _selectedDate = newDate;
                    isDateSelected =true;
                  });
                  print(_selectedDate);
                },
                pickerTheme: DateTimePickerTheme(
                  backgroundColor: Colors.transparent,
                  itemTextStyle:
                      TextStyle(color: primaryBlueColor, fontSize: 19),
                  dividerColor: primaryBlueColor,
                ),
              ),
            ),
            // Text("${_selectedDate ?? ''}"),
            SizedBox(
              height: 50,
            ),

            BlocConsumer<UserUpdateDetailsBloc, UserUpdateDetailsState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              buildWhen: (previous, current) {
                if (current.isGenderUpdated != previous.isGenderUpdated) {
                  log('in ifjhgdfsfghmjfdv ');

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
                    if (isValidate()) {
                      String? gender;
                      String dob = _selectedDate!.day.toString() +
                          "/" +
                          _selectedDate!.month.toString() +
                          "/" +
                          _selectedDate!.year.toString();

                      if (btnMale) {
                        gender = "Male";
                      } else {
                        gender = "Female";
                      }
                      log("ooooo===>>> $gender" + " " + dob);

                      userUpdateDetailsBloc.add(UpdateProfileApi(
                          gender: gender,
                          dob: dob,
                          interest: "",
                          location: "",
                          isHitFor: "gender",
                          context: context));

                    }

                  },
                );
              },
            ),

            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  bool isValidate() {
    if (btnMale != true && btnFemale != true) {
      CustomFlutterToast.showToast(
          message: 'Please select your gender',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    }
    if (!isDateSelected) {
      CustomFlutterToast.showToast(
          message: 'Please select your date of birth',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    }
    return true;
  }
}
