import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shortbit/create_account/bloc/create_account_bloc.dart';
import 'package:shortbit/home_page/bloc/home_page_bloc.dart';
import 'package:shortbit/home_page/components/host_card.dart';
import 'package:shortbit/host_live_call/bloc/host_live_call_bloc.dart';
import 'package:shortbit/host_live_call/host_live_call_new.dart';
import 'package:shortbit/join_live_video/join_live_video.dart';
import 'package:shortbit/message_screen/message_screen.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';
import 'package:shortbit/utils/constants.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';

import '../shortVedioScreen/bloc/short_video_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    initFunction();
    // TODO: implement initState
    super.initState();
  }

  String? role;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/icons/app_logo.png',
              height: 30,
              width: 30,
            ),
            SizedBox(
              width: 5,
            ),
            Image.asset(
              'assets/icons/app_logo_name.png',
              height: 30,
              width: 100,
            ),
          ],
        ),
        actions: [
          Image.asset(
            'assets/icons/notification.png',
            height: 20,
            width: 20,
          ),
          SizedBox(
            width: 25,
          ),
          CustomBounce(
            onPressed: () {
              // navPush(context: context, action: ChatList());
              navPush(context: context, action: MessageScreen());
            },
            child: Image.asset(
              'assets/icons/msg.png',
              height: 20,
              width: 20,
            ),
          ),
          SizedBox(
            width: 25,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to Explore',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                BlocBuilder<HomePageBloc, HomePageState>(
                  builder: (context, state) {
                    return state.allLiveStreem == null
                        ? SizedBox()
                        : GridView.builder(
                            itemCount: state.allLiveStreem!.data!.length > 4
                                ? 4
                                : state.allLiveStreem?.data?.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 4 / 5,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10),
                            itemBuilder: (context, index) {
                              return CustomBounce(
                                  onPressed: () {
                                    log('----host id ${state.allLiveStreem!.data![index].hostId?.sId.toString()}');
                                    navPush(
                                        context: context,
                                        action: JoinLiveVideo(
                                          roomId: state
                                              .allLiveStreem!.data![index].sId
                                              .toString(),
                                          to_user_id: state
                                              .allLiveStreem!.data![index].sId
                                              .toString(),
                                          startTime: state.allLiveStreem!
                                              .data![index].startTime
                                              .toString(),
                                          hostId: state.allLiveStreem!
                                              .data![index].hostId!.sId
                                              .toString(),
                                        ));

                                    // navPush(context: context, action: ConfettiDemo());
                                  },
                                  child: HostCard(
                                    hostName: state.allLiveStreem!.data![index]
                                        .hostId!.name
                                        .toString(),
                                    roomID: state
                                        .allLiveStreem!.data![index].hostId!.sId
                                        .toString(),
                                    hostProfileImage: state.allLiveStreem!
                                        .data![index].hostId!.profileImage
                                        .toString(),
                                    peakViewCount: state.allLiveStreem!
                                        .data![index].peakViewCount
                                        .toString(),
                                    earned_coins: state
                                        .allLiveStreem!.data![index].earnedCoins
                                        .toString(),
                                    language: state
                                        .allLiveStreem!.data![index].language
                                        .toString(),
                                    level: state
                                        .allLiveStreem!.data![index].level
                                        .toString(),
                                  ));
                            },
                          );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/images/dashboard_banner.png",
                  width: double.infinity,
                ),
                SizedBox(
                  height: 10,
                ),
                BlocBuilder<HomePageBloc, HomePageState>(
                  builder: (context, state) {
                    return state.allLiveStreem == null
                        ? SizedBox()
                        : GridView.builder(
                            itemCount: 0,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 4 / 5,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10),
                            itemBuilder: (context, index) {
                              return SizedBox();

                              //   HostCard(
                              //   hostName:
                              //       state.allLiveStreem!.data![index].hostId!.name,
                              //   roomID:
                              //       state.allLiveStreem!.data![index].hostId!.sId,
                              //   hostProfileImage: state.allLiveStreem!.data![index]
                              //       .hostId!.profileImage,
                              //   peakViewCount:
                              //       state.allLiveStreem!.data![index].peakViewCount,
                              // );
                            },
                          );
                  },
                ),
              ],
            ),
            role == "host"
                ? Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.010,
                    child: BlocConsumer<HostLiveCallBloc, HostLiveCallState>(
                      listener: (context, state) {},
                      buildWhen: (previous, current) {
                        if (current.onGoingLiveRoom?.data !=
                            previous.onGoingLiveRoom?.data) {
                          return true;
                        } else {
                          return false;
                        }
                      },
                      builder: (context, state) {
                        return CustomBounce(
                          onPressed: () {
                            // navPush(
                            //     context: context,
                            // action: HostLiveCall(
                            //   channelName:
                            //       state.onGoingLiveRoom?.data?.sId.toString(),
                            // ));

                            // ApiCreateLiveRoom

                            log('-----state.onGoingLiveRoom?.data ${state.onGoingLiveRoom?.data}');

                            if (state.onGoingLiveRoom?.data == null) {
                              log('----1');
                              log('navigate with CreateLiveRoom');

                              final hostLiveCallBloc =
                                  context.read<HostLiveCallBloc>();

                              hostLiveCallBloc
                                  .add(ApiCreateLiveRoom(context: context));
                            } else {
                              log('----2');
                              log('navigate with onGoingLiveRoom');

                              // navPush(
                              //     context: context,
                              //     action: HostLiveCallNew(
                              //       channelName: state
                              //           .onGoingLiveRoom?.data?.sId
                              //           .toString(),
                              //       startTime: state
                              //           .onGoingLiveRoom!.data!.startTime
                              //           .toString(),
                              //       hostId: state.onGoingLiveRoom!.data!.hostId!
                              //           .toString(),
                              //     ));

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => HostLiveCallNew(
                                          channelName: state
                                              .onGoingLiveRoom?.data?.sId
                                              .toString(),
                                          startTime: state
                                              .onGoingLiveRoom!.data!.startTime
                                              .toString(),
                                          hostId: state
                                              .onGoingLiveRoom!.data!.hostId!
                                              .toString(),
                                        )),
                              ).then((value) {
                                initFunction();
                              });
                            }

                            // navPush(
                            //     context: context,
                            //     action: CallPage(
                            //       channelName: "1234",
                            //     ));
                          },
                          child: Container(
                            height: 50,
                            width: 200,
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.00, -1.00),
                                end: Alignment(0, 1),
                                colors: [Color(0xFFFF971D), Color(0xFFFF1E0F)],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                state.onGoingLiveRoom?.data == null
                                    ? 'Go Live'
                                    : 'Continue Streem',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.24,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }

  Future<void> initFunction() async {
    final homePageBloc = context.read<HomePageBloc>();
    final createAccountBloc = context.read<CreateAccountBloc>();
    final hostLiveCallBloc = context.read<HostLiveCallBloc>();
    final getReelsBloc = context.read<ShortVideoBloc>();

    createAccountBloc.add(GetUser());

    SharedPreferences prefs = await SharedPreferences.getInstance();

    role = await prefs.getString(Role);

    log('current role  $role');

    homePageBloc.add(AllLiveStreemApi());

    hostLiveCallBloc.resetBloc();

    hostLiveCallBloc.add(ApiOnGoingLive());

    // ReelService().getVideosFromApI(context: context);

    getReelsBloc.add(GetReelsApi(limit: 10, context: context, page: 1));

    setState(() {});
  }
}
