import 'package:flutter/material.dart';
import 'package:shortbit/profile_screen/EditProfilePage/EditDataPage.dart';
import 'package:shortbit/profile_screen/Privacy_Policy_Page/PrivacyPolicyPage.dart';
import 'package:shortbit/profile_screen/MyProfilePage/componets/Profile.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: height * 0.08,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
            child: Container(
                decoration: ShapeDecoration(
                  shape: OvalBorder(
                    side: BorderSide(width: 1, color: Color(0xFFBFBFBF)),
                  ),
                ),
                child: InkWell(
                  onTap: (){
                    navPop(context: context);
                  },
                    child: Icon(Icons.arrow_back))),
          ),
          leadingWidth: 80,
          title: Text(
            'Settings',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontFamily: 'Segoe UI',
              fontWeight: FontWeight.w600,
              height: 0.04,
              letterSpacing: -0.24,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: width * 0.025, color: Colors.black12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Profile(Text1: "App Language"),
                  )),
              Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: width * 0.002, color: Colors.black26),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Profile(Text1: "Blacklist"),
                  )),
              Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: width * 0.002, color: Colors.black26),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: InkWell(
                      onTap: (){
                        navPush(context: context, action: PrivacyPolicy());
                      },
                        child: Profile(Text1: "Privacy Policy")),
                  )),
              Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: width * 0.002, color: Colors.black26),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Profile(Text1: "User Agreement"),
                  )),
              Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: width * 0.002, color: Colors.black26),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: InkWell(
                      onTap: (){
                        navPush(context: context, action: EditDataPage());
                      },
                        child: Profile(Text1: "About Us")),
                  )),
              Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: width * 0.025, color: Colors.black12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Profile(Text1: "Version"),
                  )),
              SizedBox(
                height: height * 0.025,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                      color: Color(0xFF6000FF),
                      fontSize: 28,
                      fontFamily: 'Segoe UI',
                      fontWeight: FontWeight.w400,
                      height: 0.06,
                      letterSpacing: -0.24,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
