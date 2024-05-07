import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/gallery/gallery.dart';
import 'package:shortbit/join_live_video/components/send_gifts_section.dart';
import 'package:shortbit/one_to_one_video_call/one_to_one_video_call.dart';
import 'package:shortbit/utils/app_colors.dart';
import 'package:shortbit/utils/custom_widgets/app_background.dart';

import '../utils/common_methods/navigation_method.dart';
import '../utils/custom_widgets/custom_bounce.dart';
import 'bloc/host_profile_bloc.dart';
import 'model/host_profile_model.dart';

class HostProfileScreen extends StatefulWidget {
  final String hostId;

  const HostProfileScreen({super.key, required this.hostId});

  @override
  State<HostProfileScreen> createState() => _HostProfileScreen();
}

class _HostProfileScreen extends State<HostProfileScreen> {
  String name = "";
  String age = "";
  String location = "";
  List<Interest> interestList = [];

  @override
  void initState() {
    getProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<HostProfileBloc, HostProfileState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      buildWhen: (previous, current) {
        if (current.isProfile == true) {
          name = current.hostProfileModel!.data!.name!;
          age = current.hostProfileModel!.data!.age!;
          location = current.hostProfileModel!.data!.location!.name!;
          interestList = current.hostProfileModel!.data!.interest!;
          return true;
        } else {
          return false;
        }
      },
      builder: (context, state) {
        return state.hostProfileModel == null
            ? SizedBox()
            : AppBackground(
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height * 1.5,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      width: MediaQuery.sizeOf(context).width * 1,
                      height: MediaQuery.sizeOf(context).height * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.blue,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "assets/images/girl_full_img.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 15,
                      child: CustomBounce(
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
                    ),
                    Positioned(
                      top: MediaQuery.sizeOf(context).height * 0.5,
                      left: 1,
                      right: 1,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(35),
                                topRight: Radius.circular(35))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, top: 20, right: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "$name, $age",
                                    style: TextStyle(
                                      color: Colors.black
                                          .withOpacity(0.800000011920929),
                                      fontSize: 20,
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      CustomBounce(
                                        onPressed: () {},
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "assets/images/do_video_call_icon.png"),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      CustomBounce(
                                        onPressed: () {},
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "assets/images/do_msg_icon.png"),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                location,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18,
                                  fontFamily: 'Segoe UI',
                                ),
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
                                    SendGiftsSection.showSendGiftsBottomSheet(
                                        context: context,
                                        room_id: "",
                                        to_user_id: widget.hostId);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              const Color(0xFFE32121),
                                              const Color(0xFFEFA21F),
                                            ],
                                            begin: const FractionalOffset(
                                                0.0, 0.0),
                                            end: const FractionalOffset(
                                                1.0, 0.0),
                                            stops: [0.0, 1.0],
                                            tileMode: TileMode.clamp),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 35,
                                          top: 14,
                                          right: 35,
                                          bottom: 14),
                                      child: Row(
                                        children: [
                                          Container(
                                              width: 24,
                                              height: 24,
                                              child: Image.asset(
                                                  "assets/images/gift_btn_icon.png")),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Send Gift',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontFamily: 'Segoe UI',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                CustomBounce(
                                  onPressed: () {
                                    navPush(
                                        context: context,
                                        action: OneToOneVideoCall(
                                          channelName: "abc",
                                          hostId: widget.hostId,
                                        ));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              const Color(0xFF6D21E3),
                                              const Color(0xFFCC78F4),
                                            ],
                                            begin: const FractionalOffset(
                                                0.0, 0.0),
                                            end: const FractionalOffset(
                                                1.0, 0.0),
                                            stops: [0.0, 1.0],
                                            tileMode: TileMode.clamp),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 35,
                                          top: 1,
                                          right: 35,
                                          bottom: 1),
                                      child: Row(
                                        children: [
                                          Container(
                                              width: 24,
                                              height: 24,
                                              child: Image.asset(
                                                  "assets/images/video_call_btn_ion.png")),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                'Video Call',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontFamily: 'Segoe UI',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                '(${state.hostProfileModel!.data!.pricePerMin.toString()} / min)',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontFamily: 'Segoe UI',
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                'Description',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                'Worem ipsum dolor sit amet, consectetur adipiscin \n elit. Nunc vulputate libero et velit interdum, ac \n aliquet odio mattis Read more',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 16,
                                  fontFamily: 'Segoe UI',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                'Interest',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 14 / 3,
                                mainAxisSpacing: 6,
                                crossAxisSpacing: 6,
                              ),
                              shrinkWrap: true,
                              physics: BouncingScrollPhysics(),
                              itemCount: interestList.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: primaryBlueColor,
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
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                'Marvin’s Info',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Age',
                                    style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 16,
                                      fontFamily: 'Segoe UI',
                                    ),
                                  ),
                                  Text(
                                    '22 Years',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, bottom: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Height',
                                    style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 16,
                                      fontFamily: 'Segoe UI',
                                    ),
                                  ),
                                  Text(
                                    '175 cm',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, bottom: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Speaks',
                                    style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 16,
                                      fontFamily: 'Segoe UI',
                                    ),
                                  ),
                                  Text(
                                    'English',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, bottom: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Gallery',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  CustomBounce(
                                    onPressed: () {
                                      navPush(
                                          context: context, action: Gallery());
                                    },
                                    child: Text(
                                      'All',
                                      style: TextStyle(
                                        color: primaryBlueColor,
                                        fontSize: 16,
                                        fontFamily: 'Segoe UI',
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.2,
                                  child: Image.asset(
                                    "assets/images/girl_img.png",
                                    fit: BoxFit.fill,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.2,
                                  child: Image.asset(
                                    "assets/images/girl_img.png",
                                    fit: BoxFit.fill,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
      },
    ));
  }

  void getProfile() {
    final hostProfileBloc = context.read<HostProfileBloc>();
    hostProfileBloc.add(GetProfileApi(context: context, hostId: widget.hostId));
  }
}
