import 'package:flutter/material.dart';
import 'package:shortbit/profile_screen/EditProfilePage/EditDataPage.dart';
import 'package:shortbit/profile_screen/Self_introductionPage/Self-introduction.dart';
import 'package:shortbit/profile_screen/MyProfilePage/componets/Profile.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height*1;
    final width=MediaQuery.of(context).size.width*1;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height*0.08,

        leading: Padding(
          padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
          child: Container(
              width: width*0.2,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(width: 1, color: Color(0xFFBFBFBF)),
                ),),
              child: InkWell(
                onTap: (){
                  navPop(context: context);
                },
                  child: Icon(Icons.arrow_back))),
        ),
        leadingWidth: 80,
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text("My Profile",style: TextStyle(fontWeight: FontWeight.w600),),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
                onTap: (){
                  navPush(context: context, action: EditDataPage());
                },
                child: Text("Edit",style: TextStyle(fontSize: 20,color: Colors.blue.shade900),)),
          )
        ],


      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                height: height*0.05,

                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width*0.002, color: Colors.black26),
                  ),                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Profile(Text1: "My Avatar",),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                height: height*0.05,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width*0.002, color: Colors.black26),
                  ),                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Profile(Text1: "ID",),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width*0.002, color: Colors.black26),
                  ),                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Profile(Text1: "Nickname",),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(

                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width*0.002, color: Colors.black26),
                  ),                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Profile(Text1: "Gender",),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width*0.002, color: Colors.black26),
                  ),                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Profile(Text1: "Age",),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width*0.002, color: Colors.black26),
                  ),                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Profile(Text1: "Region",),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width*0.002, color: Colors.black26),
                  ),                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Profile(Text1: "Location",),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width*0.002, color: Colors.black26),
                  ),                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Profile(Text1: "Interest Tags",),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width*0.018, color: Colors.black12),
                  ),                ),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: InkWell(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => SelfIntroduction(),));
                    },
                      child: Profile(Text1: "Self-introduction",)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width*0.002, color: Colors.black26),
                  ),                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Profile(Text1: "Google",),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width*0.002, color: Colors.black26),
                  ),                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Profile(Text1: "Phone",),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width*0.002, color: Colors.black26),
                  ),                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Profile(Text1: "Gmail",),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
