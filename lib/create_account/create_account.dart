import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:shortbit/login_screen/logIn_screen.dart';
import 'package:shortbit/terms_and_conditions/terms_and_condition_screen.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';
import 'package:shortbit/utils/custom_widgets/app_background.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';
import 'package:shortbit/utils/custom_widgets/toast.dart';

import '../utils/app_colors.dart';
import '../utils/custom_widgets/custom_app_button.dart';
import '../utils/custom_widgets/custom_text_form_field.dart';
import 'bloc/create_account_bloc.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool? isChecked = false;

  final OtpController = TextEditingController();
  final focusNode = FocusNode();
  final RegExp _emailRegExp = RegExp(
    r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
  );

  @override
  Widget build(BuildContext context) {
    final createAccountBloc = context.read<CreateAccountBloc>();
    return Scaffold(
      body: AppBackground(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Create Account',
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
              'Fill your information below or register \n with your social account',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF4E4E4E),
                fontSize: 14,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.800000011920929),
                    fontSize: 14,
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            CustomTextFormField(
                controller: nameController, hintText: "John Doe"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.800000011920929),
                    fontSize: 14,
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            CustomTextFormField(
              controller: emailController,
              hintText: "example@gmail.com",
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z0-9@.]+")),
                LengthLimitingTextInputFormatter(320),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Phone Number',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.800000011920929),
                    fontSize: 14,
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            CustomTextFormField(
              controller: mobileController,
              hintText: "9123456786",
              keyBoardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(10),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.800000011920929),
                    fontSize: 14,
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            BlocBuilder<CreateAccountBloc, CreateAccountState>(
              builder: (context, state) {
                return CustomTextFormField(
                  controller: passwordController,
                  hintText: "*****",
                  maxline: 1,
                  obscureText: createAccountBloc.state.passwordHide,
                  suffixIcon: CustomBounce(
                      onPressed: () {
                        bool oposite_isPasswordHide =
                            !createAccountBloc.state.passwordHide;
                        createAccountBloc.add(PasswordHide(
                            isPasswordHide: oposite_isPasswordHide));
                      },
                      child: state.passwordHide == true
                          ? Icon(CupertinoIcons.eye_slash)
                          : Icon(CupertinoIcons.eye)),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    value: isChecked,
                    onChanged: (value) {
                      isChecked = value;
                      setState(() {

                      });
                    }),
                Text("Agree with",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black45,
                      fontFamily: 'Segoe UI',
                      fontWeight: FontWeight.w600,
                    )),
                CustomBounce(
                  onPressed: () {
                    navPush(context: context, action: TermsAndConditions());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Terms & Condition',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF6000FF),
                        fontSize: 14,
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            BlocConsumer<CreateAccountBloc, CreateAccountState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              buildWhen: (previous, current) {
                /*if (current.isSingnUpApiHit != previous.isSingnUpApiHit) {*/
                if (current.isSingnUpApiHit == true) {
                  log('in if ');
                  VerifyOtpBottomSheet(context,createAccountBloc);

                  return true;
                }
               else {
                  log('in else ');
                  return false;
                }
              },
              builder: (context, state) {
                return CustomAppButton(
                  title: 'Sign Up',
                  onPressed: () {
                    if (isAllValid()) {
                      createAccountBloc.add(CreateAccountApi(
                          name: nameController.text.trim().trim(),
                          email: emailController.text.trim().toString(),
                          password: passwordController.text.trim().toString(),
                          phone_number: mobileController.text.trim().toString(),
                          context: context));
                    }
                    // log("hhhhhhh=====>>>  ${createAccountBloc.state.signUpModel?.status}");
                    // if (createAccountBloc.state.signUpModel?.status == true) {
                    //
                    // }
                    // navPush(context: context, action: TellUsAboutYourSelf());
                  },
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 100,
                  child: Divider(
                    endIndent: 10,
                    color: Colors.black45,
                    thickness: 1,
                    height: 2,
                  ),
                ),
                Text(
                  "Or sign up with",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black45,
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Divider(
                    indent: 10,
                    color: Colors.black45,
                    thickness: 1,
                    height: 2,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBounce(
                  onPressed: () {},
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/Google.png"),
                    backgroundColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 30,
                ),
                CustomBounce(
                  onPressed: () {},
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/Facebook.png"),
                    backgroundColor: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black45,
                      fontFamily: 'Segoe UI',
                      fontWeight: FontWeight.w600,
                    )),
                CustomBounce(
                  onPressed: () {
                    navPushRemove(context: context, action: LoginScreen());
                  },
                  child: Text(" Log In",
                      style: TextStyle(
                        fontSize: 14,
                        color: primaryBlueColor,
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.w600,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> VerifyOtpBottomSheet(BuildContext context,CreateAccountBloc createAccountBloc) {
    const focusedBorderColor = primaryBlueColor;
    const fillColor = Colors.black12;
    const borderColor = Colors.black12;


    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: borderColor),
      ),
    );

    return showModalBottomSheet<void>(
      backgroundColor: Colors.white,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext bottomContext) {
        return Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SizedBox(
              height: 400,
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Enter 4 Digit Code',
                      textAlign: TextAlign.start,
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
                      'Enter the 4 digit code that you received on \nyour email.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color(0xFF4E4E4E),
                        fontSize: 14,
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Pinput(
                        controller: OtpController,
                        focusNode: focusNode,
                        androidSmsAutofillMethod:
                        AndroidSmsAutofillMethod.smsUserConsentApi,
                        listenForMultipleSmsOnAndroid: true,
                        defaultPinTheme: defaultPinTheme,
                        separatorBuilder: (index) =>
                        const SizedBox(width: 20),
                        /*validator: (value) {
              return value == '2222' ? null : 'Pin is incorrect';
            },*/
                        // onClipboardFound: (value) {
                        //   debugPrint('onClipboardFound: $value');
                        //   pinController.setText(value);
                        // },
                        hapticFeedbackType: HapticFeedbackType.lightImpact,
                        onCompleted: (pin) {
                          debugPrint('onCompleted: $pin');
                        },
                        onChanged: (value) {
                          debugPrint('onChanged: $value');
                        },
                        cursor: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 9),
                              width: 22,
                              height: 1,
                              color: focusedBorderColor,
                            ),
                          ],
                        ),
                        focusedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration!.copyWith(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: focusedBorderColor),
                          ),
                        ),
                        submittedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration!.copyWith(
                            color: fillColor,
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: focusedBorderColor),
                          ),
                        ),
                        errorPinTheme: defaultPinTheme.copyBorderWith(
                          border: Border.all(color: Colors.redAccent),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                BlocConsumer<CreateAccountBloc, CreateAccountState>(
                      listener: (context, state) {
                        // TODO: implement listener
                      },
                      buildWhen: (previous, current) {
                        if (current.isOtpVerify ==true) {
                          log('in if ');
                          createAccountBloc
                              .add(GetProfileApi(context: context));
                          Navigator.pop(context);
                          mobileController.clear();
                          OtpController.clear();
                          return true;
                        } else {
                          log('in else ');
                          return false;
                        }
                      },
                      builder: (context, state) {
                        return CustomAppButton(
                          title: 'Continue',
                          onPressed: () {
                            createAccountBloc.add(VerifyCreateAccountOtpApi(
                                phone_number:
                                mobileController.text.trim().toString(),
                                otp: OtpController.text.toString(),
                                context: context));

                          },
                        );
                      },
                    ),
                  ],
                ),
              )),
        );

      },
    );
  }

  bool isAllValid() {
    if (nameController.text.trim().toString().isEmpty) {
      CustomFlutterToast.showToast(
          message: 'Enter your user name',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    } else if (emailController.text.trim().toString().isEmpty) {
      CustomFlutterToast.showToast(
          message: 'Enter your  Email address',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    } else if (!_emailRegExp.hasMatch(emailController.text.trim().toString())) {
      CustomFlutterToast.showToast(
          message: 'Enter your correct Email address',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    } else if (mobileController.text.trim().isEmpty) {
      CustomFlutterToast.showToast(
          message: 'Enter your mobile number',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    } else if (mobileController.text.trim().length < 10) {
      CustomFlutterToast.showToast(
          message: 'Enter your correct mobile number',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    } else if (passwordController.text.trim().isEmpty) {
      CustomFlutterToast.showToast(
          message: 'Enter your Password',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    } else if (passwordController.text.trim().length < 6) {
      CustomFlutterToast.showToast(
          message: 'Password must be 6 digits',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    }
    if(isChecked!=true){
      CustomFlutterToast.showToast(
          message: 'Please check terms and conditions',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    }
    return true;
  }
}
