import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shortbit/utils/custom_widgets/app_background.dart';

import '../tell_us_about_yourself/bloc/user_update_details_bloc.dart';
import '../utils/app_colors.dart';
import '../utils/common_methods/navigation_method.dart';
import '../utils/custom_widgets/custom_app_button.dart';
import '../utils/custom_widgets/custom_bounce.dart';
import '../utils/custom_widgets/toast.dart';

class UploadYourPhotos extends StatefulWidget {
  const UploadYourPhotos({super.key});

  @override
  State<UploadYourPhotos> createState() => _UploadYourPhotosState();
}

class _UploadYourPhotosState extends State<UploadYourPhotos> {
  File? imagePath1, imagePath2, imagePath3, imagePath4, imagePath5, imagePath6;
  bool? isOpenCamera;
  String imageActionFor = "1";

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
                    "assets/images/pro_full.png",
                  ),
                ),
                Text(
                  "3/3",
                  style: TextStyle(fontSize: 14, color: primaryBlueColor),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Upload Your Photos',
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
              'To Boost Your Daily Match Potential, Include \n Your Photos',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBounce(
                  onPressed: () {
                    SelectGalleryOrCameraBottomSheet(context, "1");
                  },
                  child: Container(
                      width: 190,
                      height: 190,
                      child: imagePath1 == null
                          ? Image.asset(
                              "assets/images/select_pic_icon.png",
                              fit: BoxFit.fill,
                            )
                          : ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                            child: Image.file(
                                imagePath1!,
                                fit: BoxFit.fill,
                              ),
                          )),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: CustomBounce(
                        onPressed: () {
                          SelectGalleryOrCameraBottomSheet(context, "2");
                        },
                        child: Container(
                            width: 90,
                            height: 90,
                            child: imagePath2 == null
                                ? Image.asset(
                                    "assets/images/select_pic_icon.png",
                                    fit: BoxFit.fill)
                                : ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.file(
                                imagePath2!,
                                fit: BoxFit.fill,
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: CustomBounce(
                        onPressed: () {
                          SelectGalleryOrCameraBottomSheet(context, "3");
                        },
                        child: Container(
                            width: 90,
                            height: 90,
                            child: imagePath3 == null
                                ? Image.asset(
                                    "assets/images/select_pic_icon.png",
                                    fit: BoxFit.fill,
                                  )
                                : ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.file(
                                imagePath3!,
                                fit: BoxFit.fill,
                              ),
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: CustomBounce(
                    onPressed: () {
                      SelectGalleryOrCameraBottomSheet(context, "4");
                    },
                    child: Container(
                        width: 90,
                        height: 90,
                        child: imagePath4 == null
                            ? Image.asset("assets/images/select_pic_icon.png",
                                fit: BoxFit.fill)
                            : ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.file(
                            imagePath4!,
                            fit: BoxFit.fill,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: CustomBounce(
                    onPressed: () {
                      SelectGalleryOrCameraBottomSheet(context, "5");
                    },
                    child: Container(
                        width: 90,
                        height: 90,
                        child: imagePath5 == null
                            ? Image.asset("assets/images/select_pic_icon.png",
                                fit: BoxFit.fill)
                            :  ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.file(
                            imagePath5!,
                            fit: BoxFit.fill,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: CustomBounce(
                    onPressed: () {
                      SelectGalleryOrCameraBottomSheet(context, "6");
                    },
                    child: Container(
                        width: 90,
                        height: 90,
                        child: imagePath6 == null
                            ? Image.asset("assets/images/select_pic_icon.png",
                                fit: BoxFit.fill)
                            :  ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.file(
                            imagePath6!,
                            fit: BoxFit.fill,
                          ),
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            CustomAppButton(
              title: 'Next',
              onPressed: () {
                if(imagePath1==null){
                  CustomFlutterToast.showToast(
                      message: 'Please upload your profile picture',
                      backgroundColor: primaryBlueColor,
                      textColor: Colors.white);
                }else{
                  userUpdateDetailsBloc
                      .add(UploadImageApi(image: imagePath1!, context: context));
                }

                //navPush(context: context, action: GetLocationScreen());
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> SelectGalleryOrCameraBottomSheet(
      BuildContext context, String actionFor) {
    return showModalBottomSheet<void>(
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
                          onPressed: () {
                            isOpenCamera = true;
                            _requestPermissions(actionFor);
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
                          onPressed: () {
                            isOpenCamera = false;
                            _requestPermissions(actionFor);
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

  void _requestPermissions(String actionFor) async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.storage,
    ].request();
    if (statuses[Permission.camera] == PermissionStatus.granted &&
        statuses[Permission.storage] == PermissionStatus.granted) {
      if (isOpenCamera == true) {
        _getImage(ImageSource.camera, actionFor);
      } else {
        _getImage(ImageSource.gallery, actionFor);
      }
    } else {
      print('Permissions denied');
    }
  }

  Future<void> _getImage(ImageSource source, String actionFor) async {
    try {
      final pickedFile = await ImagePicker().pickImage(source: source);
      if (pickedFile != null) {
        File imageFile = File(pickedFile.path);
        log("===>path===>${imageFile.path}");
        switch (actionFor) {
          case "1":
            imagePath1 = imageFile;
            break;
          case "2":
            imagePath2 = imageFile;
            break;
          case "3":
            imagePath3 = imageFile;
            break;
          case "4":
            imagePath4 = imageFile;
            break;
          case "5":
            imagePath5 = imageFile;
            break;
          case "6":
            imagePath6 = imageFile;
            break;
        }
        setState(() {});
      } else {}
    } catch (e) {
      print('Error picking image: $e');
    }
  }
}
