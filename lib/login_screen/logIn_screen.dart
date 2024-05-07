import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:shortbit/create_account/create_account.dart';
import 'package:shortbit/login_screen/bloc/login_bloc.dart';
import 'package:shortbit/login_screen/model/password_reset.dart';
import 'package:shortbit/utils/custom_widgets/app_background.dart';
import 'package:shortbit/utils/custom_widgets/custom_app_button.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';
import 'package:shortbit/utils/custom_widgets/custom_text_form_field.dart';

import '../utils/app_colors.dart';
import '../utils/common_methods/navigation_method.dart';
import '../utils/custom_widgets/toast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  final OtpController = TextEditingController();
  final focusNode = FocusNode();
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  String forgotMobileOrMail="";
  String?otp;
  bool ismail =false;
  

  @override
  Widget build(BuildContext context) {
    final loginBloc = context.read<LoginBloc>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: AppBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Log In',
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
                'Hi! Welcome back, you’ve been missed',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF4E4E4E),
                  fontSize: 14,
                  fontFamily: 'Segoe UI',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Email or Mobile',
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
                  controller: emailController, hintText: "example@gmail.com or 9145266666"),
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
              BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return CustomTextFormField(
                    controller: passwordController,
                    hintText: "*****",
                    maxline: 1,
                    obscureText: loginBloc.state.passwordHide,
                    suffixIcon: CustomBounce(
                        onPressed: () {
                          bool oposite_isPasswordHide =
                              !loginBloc.state.passwordHide;
                          loginBloc.add(PasswordHide(
                              isPasswordHide: oposite_isPasswordHide));
                        },
                        child: state.passwordHide == true
                            ? Icon(CupertinoIcons.eye_slash)
                            : Icon(CupertinoIcons.eye)),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomBounce(
                    onPressed: () {
                      ForgotPasswordBottomSheet(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Forgot Password ?',
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
              BlocConsumer<LoginBloc, LoginState>(
                  listener: (context, state) {
                  // TODO: implement listener
           },
                buildWhen: (previous, current) {
                  if (current.isLogin ==true) {
                   loginBloc.add(GetProfileApi(context: context));
                   emailController.clear();
                   passwordController.clear();
                    return true;
                  } else {

                    return false;
                  }
                },
             builder: (context, state) {
               return CustomAppButton(
                title: 'Sign In',
                onPressed: () {
                  if(isUserLoginValid()){
                    loginBloc.add(LoginApi(
                        email: emailController.text.trim().toString(),
                        password: passwordController.text..trim().toString(),
                        isMail: ismail,
                        context: context));
                  }

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
                    "Or sign in with",
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
                  Text("Don’t have an account?",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black45,
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.w600,
                      )),
                  CustomBounce(
                    onPressed: () {
                      navPush(context: context, action: CreateAccount());
                    },
                    child: Text(" Sign Up",
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
      ),
    );
  }

  Future<void> ForgotPasswordBottomSheet(BuildContext context) {
    final loginBloc = context.read<LoginBloc>();
    return showModalBottomSheet<void>(
      backgroundColor: Colors.white,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SizedBox(
              height: 450,
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
                      'Forgot Password',
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
                      'Enter your email or mobile number for the verification process,\n we will send 4 digit code to your email.',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Email or Mobile',
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
                        hintText: "Email or Mobile"),
                    SizedBox(
                      height: 20,
                    ),
                    BlocConsumer<LoginBloc, LoginState>(
                    listener: (context, state) {
                            // TODO: implement listener
                                  },
                      buildWhen: (previous, current) {
                        if (current.isForgotPasswordOtp ==true) {
                          Navigator.pop(context);
                          VerifyOtpBottomSheet(context);
                          return true;
                        } else {

                          return false;
                        }
                      },
                    builder: (context, state) {
                      return CustomAppButton(
                      title: 'Continue',
                      onPressed: () {
                        forgotMobileOrMail = emailController.text.trim().toString();
                        if(isValid(forgotMobileOrMail)){
                          loginBloc.add(ForgotPasswordRequest(phone_number: forgotMobileOrMail,isMail: ismail, context: context));
                        }

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

  Future<void> VerifyOtpBottomSheet(BuildContext context) {
    const focusedBorderColor = primaryBlueColor;
    const fillColor = Colors.black12;
    const borderColor = Colors.black12;
    final loginBloc = context.read<LoginBloc>();

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
      builder: (BuildContext context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SizedBox(
              height: 450,
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
                      'Enter the 4 digit code that you received on \nyour email or mobile.',
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
                        separatorBuilder: (index) => const SizedBox(width: 20),
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
                    BlocConsumer<LoginBloc, LoginState>(
                    listener: (context, state) {
    // TODO: implement listener
                   },
                      buildWhen: (previous, current) {
                        if (current.isOtpVerify ==true) {
                          Navigator.pop(context);
                          ResetPasswordBottomSheet(context);
                          return true;
                        } else {
                          return false;
                        }
                      },

              builder: (context, state) {
              return CustomAppButton(
                      title: 'Continue',
                      onPressed: () {
                        otp =OtpController.text.trim().toString();
                        loginBloc.add(VerifyAccountOtpApi(phone_number: forgotMobileOrMail, otp: otp!, isMail: ismail, context: context));

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

  Future<void> ResetPasswordBottomSheet(BuildContext context) {
    //final newPassBloc = context.read<LoginBloc>();
    final loginBloc = context.read<LoginBloc>();
    return showModalBottomSheet<void>(
      backgroundColor: Colors.white,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SizedBox(
              height: 500,
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
                      'Forgot Password',
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
                      'Enter your email for the verification process,\n we will send 4 digit code to your email.',
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
                    BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        return CustomTextFormField(
                          controller: newPasswordController,
                          hintText: "*****",
                          maxline: 1,
                          obscureText: loginBloc.state.passwordHide,
                          suffixIcon: CustomBounce(
                              onPressed: () {
                                bool oposite_isPasswordHide =
                                !loginBloc.state.passwordHide;
                                loginBloc.add(PasswordHide(
                                    isPasswordHide: oposite_isPasswordHide));
                              },
                              child: state.passwordHide == true
                                  ? Icon(CupertinoIcons.eye_slash)
                                  : Icon(CupertinoIcons.eye)),
                        );
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Confirm Password',
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
                    BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        return CustomTextFormField(
                          controller: confirmPasswordController,
                          hintText: "*****",
                          maxline: 1,
                          obscureText: loginBloc.state.passwordHide,
                          suffixIcon: CustomBounce(
                              onPressed: () {
                                bool oposite_isPasswordHide =
                                !loginBloc.state.passwordHide;
                                loginBloc.add(PasswordHide(
                                    isPasswordHide: oposite_isPasswordHide));
                              },
                              child: state.passwordHide == true
                                  ? Icon(CupertinoIcons.eye_slash)
                                  : Icon(CupertinoIcons.eye)),
                        );
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    BlocConsumer<LoginBloc, LoginState>(
                      listener: (context, state) {
                        // TODO: implement listener
                      },
                      buildWhen: (previous, current) {
                        if (current.isPasswordReset ==true) {
                          Navigator.pop(context);
                          return true;
                        } else {
                          return false;
                        }
                      },
                       builder: (context, state) {
                       return CustomAppButton(
                      title: 'Reset Password',
                      onPressed: () {
                        if(isPasswordMatched()){
                          loginBloc.add(Password_reset(phone_number: forgotMobileOrMail!, password: confirmPasswordController.text.trim().toString(), isMail: ismail, context: context));
                        }

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

  bool isPasswordMatched(){
    if(newPasswordController.text.trim().toString().isEmpty){
      CustomFlutterToast.showToast(
          message: 'Enter your new password',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    }

    if(confirmPasswordController.text.trim().toString().isEmpty){
      CustomFlutterToast.showToast(
          message: 'Enter your confirm password',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    }

    if(newPasswordController.text.trim().toString() != confirmPasswordController.text.trim().toString()){
      CustomFlutterToast.showToast(
          message: 'Confirm password not match',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    }
    return true;
  }

  bool isValid(String numOrMail){
    if(numOrMail.isEmpty){
      CustomFlutterToast.showToast(
          message: 'Enter your mobile number or email',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    }
    if(_containsOnlyDigits(numOrMail)){
      ismail =false;
      if(!_isValidMobile(numOrMail)){
        CustomFlutterToast.showToast(
            message: 'Enter your  correct mobile number',
            backgroundColor: primaryBlueColor,
            textColor: Colors.white);
        return false;
      }

    }else{
      ismail =true;
      if(!_isValidEmail(numOrMail)){
        CustomFlutterToast.showToast(
            message: 'Enter your  correct email address',
            backgroundColor: primaryBlueColor,
            textColor: Colors.white);
        return false;
      }
    }

    return true;
  }

  bool _isValidMobile(String input) {
    // Check if input matches mobile number pattern
    final RegExp mobileRegex = RegExp(r'^\d{10}$');
    return mobileRegex.hasMatch(input);
  }

  bool _isValidEmail(String input) {
    // Check if input matches email pattern
    final RegExp emailRegex = RegExp(
        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$'); // Basic email validation pattern
    return emailRegex.hasMatch(input);
  }

  bool _containsOnlyDigits(String input) {
    final RegExp digitsRegex = RegExp(r'^[0-9]+$');
    return digitsRegex.hasMatch(input);
  }

  bool isUserLoginValid(){
    if(!isValid(emailController.text.trim().toString())){
      return false;
    }

    if(passwordController.text.trim().toString().isEmpty){
      CustomFlutterToast.showToast(
          message: 'Enter your  password',
          backgroundColor: primaryBlueColor,
          textColor: Colors.white);
      return false;
    }
    return true;
  }
}
