import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shortbit/create_account/bloc/create_account_bloc.dart';
import 'package:shortbit/profile_screen/AvatarPage/bloc/avtar_bloc.dart';
import 'package:shortbit/profile_screen/MyProfilePage/MyProfile.dart';
import 'package:shortbit/profile_screen/Self_introductionPage/Self-introduction.dart';
import 'package:shortbit/profile_screen/UserName_Page/UsernamePage.dart';
import 'package:shortbit/utils/API/end_points.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';

import '../../utils/API/api_base_helper.dart';
import '../../utils/app_colors.dart';
import '../../utils/custom_widgets/custom_bounce.dart';
import '../AvatarPage/AvatarPage.dart';
import '../MyProfilePage/componets/Profile.dart';
import '../components/ProfileButtonSheetPage.dart';
import '../MyProfilePage/componets/datepikarpage.dart';
import 'bloc/updateprofile_bloc.dart';
import 'componnets/birthDayBottomSheet.dart';
import 'componnets/genderBottomSheet.dart';

class EditDataPage extends StatefulWidget {
  const EditDataPage({super.key});
  @override
  State<EditDataPage> createState() => _EditDataPageState();
}
class _EditDataPageState extends State<EditDataPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inFun();
  }


  inFun() {
    print("hhheyyaaza");
     final bloc = context.read<AvtarBloc>();
    bloc.add(AvatarListingApi());


  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
  builder: (context, state) {
    return Scaffold(
      appBar:
      AppBar(
        // toolbarHeight: height * 0.08,
        leading: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey.shade300)

            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: InkWell(
                  onTap: () {
                    navPop(context: context);
                  },
                  child: Center(child: Icon(Icons.arrow_back))),
            )),
        leadingWidth: 80,
        title: Text(
          'My Profile',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w400,
            height: 0.04,
          ),
        ),
        centerTitle: true,
      ),
      body:

      state.getProfileModel==null?Center(child: CircularProgressIndicator()):
      ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Stack(
              alignment: Alignment.bottomRight,
              children:[



              //   profileImg==null?
              //   Image.asset(
              //   "assets/icon/photo.png",
              //   height: 200,
              //   width: double.infinity,
              //   fit: BoxFit.fill,
              // ):Image.file(profileImg!,
              //     fit: BoxFit.fill,
              //
              //     height: 200,
              //     width: double.infinity,),

                profileImg == null?

                state.getProfileModel!.data!.profileImage != null ?  Image.network(
                  state.getProfileModel!.data!.profileImage.toString(),
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ) :
                  Image.asset(
                  "assets/icon/photo.png",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ):

                Image.file(
                  profileImg!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                )
               ,

                InkWell(
                  onTap: (){

                    selectGalleryOrCameraBottomSheet(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset("assets/icon/Vector9.png",width: width*0.08,),
                  ),
                ),

            ]
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,bottom: 6),
            child: BlocBuilder<AvtarBloc, AvtarState>(
  builder: (context, state1) {
    return InkWell(
              onTap: (){
                // navPush(context: context, action: UserNamePage());
              },
              child: Container(
                margin: EdgeInsets.all(2),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: InkWell(
                    onTap: ()async{
             List<String?> imageList=[];

             int selectedIndex=0;

                       imageList = state1.avatarListingModel!.data!
                          .map((e) => e.icon)
                          .toList();
                      int avatarIndex = imageList.indexWhere((icon) => icon == state.getProfileModel!.data!.avtar.toString());
                      selectedIndex=avatarIndex;
                      
                      navPush(context: context, action: AvatarPage(
                        currentAvatar: avatarIndex,));
                    },
                    child: Profile(
                      Text1: "Avatar",
                    ),
                  ),
                ),
              ),
            );
  },
),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,bottom: 6),
            child: InkWell(
              onTap: (){
                navPush(context: context,
                    action: UserNamePage(userName: state.getProfileModel!.data!.name.toString(),));
              },
              child: Container(
                margin: EdgeInsets.all(2),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Profile(
                    Text1: "Username",
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){

              GenderBottomSheet.selectGenderBottomSheet(
                  context: context,
                  gender: state.getProfileModel!.data!.gender.toString());
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,bottom: 6),
              child: Container(
                margin: EdgeInsets.all(2),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Profile(
                    Text1: "Gender",
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,bottom: 6),
            child: InkWell(
              onTap: (){
                BirthDayBottomSheet.selectBirthDayBottomSheet(context: context,
                    dob: state.getProfileModel!.data!.dob.toString());

                // navPush(context: context, action: DatePickerApp());

              },
              child: Container(
                margin: EdgeInsets.all(2),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Profile(
                    Text1: "Birthday",
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,bottom: 6),
            child: Container(
              margin: EdgeInsets.all(2),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Profile(
                  Text1: "Country",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,bottom: 6),
            child: Container(
              margin: EdgeInsets.all(2),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Profile(
                  Text1: "Language",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,bottom: 6),
            child: Container(
              margin: EdgeInsets.all(2),
              child: InkWell(
                onTap: (){
                  navPush(context: context, action: SelfIntroduction(
                    about:state.getProfileModel!.data!.about_me.toString() ,));
                },
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Profile(
                    Text1: "Self Introduction",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  },
);
  }

  File? profileImg;

  Future<void> selectGalleryOrCameraBottomSheet(
      BuildContext context,) {
    return showModalBottomSheet<void>(
      backgroundColor: Colors.white,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
         final bloc=context.read<UpdateprofileBloc>();



        return Padding(
          padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Select camera or gallery',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color(0xFF4D4C4D),
                        fontSize: 22,
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomBounce(
                          onPressed: () async {
                            // isOpenCamera = true;
                            // _requestPermissions(actionFor);
                            profileImg = await getPicker(ImageSource.camera);

                            // _api.multipartWithOnlyImage(EndPoints.getProfile, profileImg!);
                           bloc.add(UploadProfileImage(context: context, profileImage: profileImg!,));

                            setState(() {

                            });
                            print("selected image form camera");

                            Navigator.pop(context);
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                child: Image.asset(
                                  "assets/images/select_camera_icon.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                'Camera',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 18,
                                  fontFamily: 'Segoe UI',
                                ),
                              )
                            ],
                          ),
                        ),
                        CustomBounce(
                          onPressed: () async {
                            // isOpenCamera = false;
                            // _requestPermissions(actionFor);

                            profileImg = await getPicker(ImageSource.gallery);

                            // _api.multipartWithOnlyImage(EndPoints.getProfile, profileImg!);
                            bloc.add(UploadProfileImage(context: context, profileImage: profileImg!,));
                            final bloc1= context.read<CreateAccountBloc>();

                            bloc1.add(GetProfileEditApi(context:  context));

                            setState(() {

                            });


                            Navigator.pop(context);
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                child: Image.asset(
                                  "assets/images/select_gallery_icon.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                'Gallery',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 18,
                                  fontFamily: 'Segoe UI',
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        );
      },
    );
  }

  Future<File?> getPicker(ImageSource imageSource) async {
    XFile? image = await ImagePicker().pickImage(
      source: imageSource,
      maxWidth: 1024,
      maxHeight: 1024,
      preferredCameraDevice: CameraDevice.front,

    );

    print("image path===>>  ${File(image!.path)}");

    if (image != null) {
      return File(image.path.toString());
      // log('==>>>${_profileImg!.path}');
      // log('==>>>${_profileImg!.path.toString().split('/').last.replaceAll('\'', '')}');
    }

    return null;
  }


  bool genderMale=true;
  bool genderFemale=false;


  Future<void>

  genderBottomSheet(
      BuildContext context,) {
    return
      showModalBottomSheet<void>(
      backgroundColor: Colors.white,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Select camera or gallery',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color(0xFF4D4C4D),
                        fontSize: 22,
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomBounce(
                          onPressed: () async {

                            genderMale=true;
                            genderFemale=false;
                             setState(() {

                            });

                            // Navigator.pop(context);
                          },
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: genderMale==true?primaryBlueColor:Colors.white,
                                      width: 1,

                                  )
                                ),

                                width: 80,
                                height: 80,
                                child: Image.asset(
                                  "assets/images/select_camera_icon.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 18,
                                  fontFamily: 'Segoe UI',
                                ),
                              )
                            ],
                          ),
                        ),
                        CustomBounce(
                          onPressed: () async {

                            genderFemale=true;
                            genderMale=false;

                            setState(() {

                            });


                            // Navigator.pop(context);
                          },
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: genderFemale==true?primaryBlueColor:Colors.white,


                                        width: 1)
                                ),

                                width: 80,
                                height: 80,
                                child: Image.asset(
                                  "assets/images/select_gallery_icon.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 18,
                                  fontFamily: 'Segoe UI',
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        );
      },
    );
  }
}
