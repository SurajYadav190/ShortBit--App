import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/profile_screen/HelpCenterPage/HelpCenterPage.dart';
import 'package:shortbit/profile_screen/Privacy_Policy_Page/PrivacyPolicyPage.dart';
import 'package:shortbit/profile_screen/Settting_Page/SettingPage.dart';
import 'package:shortbit/profile_screen/Term_Condition_Page/TermsandConditions.dart';
import 'package:shortbit/profile_screen/About_Us_Page/aboutUsPage.dart';
import 'package:shortbit/profile_screen/Main_Profile_Screen%20_page/Components/Widgetcontainer.dart';

import '../../create_account/bloc/create_account_bloc.dart';
import '../../utils/common_methods/navigation_method.dart';
import '../Accountand Security/AccountandSecurity.dart';
import '../EditProfilePage/EditDataPage.dart';
import 'Components/MyBalancePage.dart';
import '../MyProfilePage/MyProfile.dart';
import '../WalletPage/WalletPage.dart';
import 'Components/friendsfollower.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfileScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    inFun();
  }

  inFun() {
    final bloc = context.read<CreateAccountBloc>();

    bloc.add(GetProfileEditApi(context: context));

  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      builder: (context, state) {
        return Scaffold(
            body: state.getProfileModel == null
                ? Center(child: CircularProgressIndicator())
                : SafeArea(
                    child: SingleChildScrollView(
                      child: Center(
                          child: Column(children: [

                            SizedBox(height: 10,),
                        ClipOval(
                            child: Image.network(
                          state.getProfileModel!.data!.profileImage.toString(),
                          height: 60,
                          fit: BoxFit.fill,
                          width: 60,
                        )),
                        Text(
                          state.getProfileModel!.data!.name.toString(),
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        Text(
                          state.getProfileModel!.data!.email.toString(),
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6000000238418579),
                            fontSize: 15,
                            fontFamily: 'Segoe UI',
                            fontWeight: FontWeight.w300,
                            height: 0.25,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: width * 0.23,
                          height: height * 0.04,
                          decoration: ShapeDecoration(
                            color: Color(0x38D7D7D7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/icon/indiaflag.png",
                                width: width * 0.07,
                              ),
                              Text(
                                "India",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.025,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FriendFollower(
                                text1: state.getProfileModel!.data!.followingCount.toString(),
                                text2: 'Following',
                              ),
                              FriendFollower(
                                text1: state.getProfileModel!.data!.followersCount.toString(),
                                text2: 'Followed',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                            onTap: () {
                              navPush(context: context, action: WalletPage());
                            },
                            child: WidgetContainer(
                                widget: Image.asset(
                                  "assets/icon/Mask group.png",
                                  width: width * 0.08,
                                ),
                                text: "My Wallet")),
                        InkWell(
                            onTap: () {
                              navPush(
                                  context: context,
                                  action: AccountandSecurity());
                            },
                            child: WidgetContainer(
                                widget: Image.asset(
                                  "assets/icon/Music.png",
                                  width: width * 0.08,
                                ),
                                text: "Account & Security")),
                        InkWell(
                            onTap: () {
                              navPush(context: context, action: EditDataPage());
                            },
                            child: WidgetContainer(
                                widget: Image.asset(
                                  "assets/icon/acoount.png",
                                  width: width * 0.08,
                                ),
                                text: "My Profile")),
                        InkWell(
                            onTap: () {
                              navPush(context: context, action: SettingPage());
                            },
                            child: WidgetContainer(
                                widget: Image.asset(
                                  "assets/icon/setting.png",
                                  width: width * 0.08,
                                ),
                                text: "Settings")),
                        InkWell(
                            onTap: () {
                              navPush(
                                  context: context, action: TermsCondition());
                            },
                            child: WidgetContainer(
                                widget: Image.asset(
                                  "assets/icon/Frame.png",
                                  width: width * 0.08,
                                ),
                                text: "Terms & Conditions")),
                        InkWell(
                            onTap: () {
                              navPush(
                                  context: context, action: PrivacyPolicy());
                            },
                            child: WidgetContainer(
                                widget: Image.asset(
                                  "assets/icon/list.png",
                                  width: width * 0.08,
                                ),
                                text: "Privacy & Policy")),
                        InkWell(
                            onTap: () {
                              navPush(
                                  context: context, action: HelpCenterPage());
                            },
                            child: WidgetContainer(
                                widget: Image.asset(
                                  "assets/icon/Info.png",
                                  width: width * 0.04,
                                ),
                                text: "Help & FAQs")),
                        InkWell(
                            onTap: () {
                              navPush(context: context, action: AboutUsPage());
                            },
                            child: WidgetContainer(
                                widget: Image.asset(
                                  "assets/icon/about.png",
                                  width: width * 0.08,
                                ),
                                text: "About Us")),
                      ])),
                    ),
                  ));
      },
    );
  }
}
