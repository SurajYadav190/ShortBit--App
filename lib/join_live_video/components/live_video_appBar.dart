import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/host_live_call/bloc/host_live_call_bloc.dart';
import 'package:shortbit/host_profile/host_profile_screen.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';

class LiveVideoAppBar extends StatefulWidget implements PreferredSizeWidget {
  final RtcEngine engine;

  final String hostId;
  final String channelName;

  const LiveVideoAppBar(
      {super.key,
      required this.hostId,
      required this.engine,
      required this.channelName});

  @override
  State<LiveVideoAppBar> createState() => _LiveVideoAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _LiveVideoAppBarState extends State<LiveVideoAppBar> {
  @override
  void initState() {
    initFunction();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        // height: 45,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: ShapeDecoration(
          color: Colors.black.withOpacity(0.41999998688697815),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomBounce(
              onPressed: () {
                // widget.engine.destroy();

                navPush(
                    context: context,
                    action: HostProfileScreen(
                      hostId: widget.hostId,
                    ));
              },
              child: Row(
                children: [
                  BlocBuilder<HostLiveCallBloc, HostLiveCallState>(
                    builder: (context, state) {
                      return state.getLiveRoomData == null
                          ? Container(
                              width: 20,
                              height: 20,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/icons/profile_icon.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: OvalBorder(),
                              ),
                            )
                          : Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    image: DecorationImage(
                                      image: NetworkImage(state.getLiveRoomData!
                                          .data!.hostId!.profileImage
                                          .toString()),
                                      fit: BoxFit.fill,
                                    ),
                                    // shape: OvalBorder(),
                                  ),
                                ),
                                Image.asset(
                                  "assets/gif/border_frame.gif",
                                  height: 40.0,
                                  width: 40.0,
                                ),
                              ],
                            );
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlocBuilder<HostLiveCallBloc, HostLiveCallState>(
                        builder: (context, state) {
                          return state.getLiveRoomData == null
                              ? SizedBox()
                              : Text(
                                  state.getLiveRoomData!.data!.hostId!.name
                                      .toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Segoe UI',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: -0.24,
                                  ),
                                );
                        },
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/icons/profile_icon.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          BlocBuilder<HostLiveCallBloc, HostLiveCallState>(
                            builder: (context, state) {
                              return state.getLiveRoomData == null
                                  ? SizedBox()
                                  : Text(
                                      state.getLiveRoomData!.data!.hostId!
                                          .followersCount
                                          .toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Segoe UI',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: -0.24,
                                      ),
                                    );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 88,
              height: 30,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFFDD9750), Color(0xFFEE4262)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(29),
                ),
              ),
              child: Center(
                child: Text(
                  'Follow me +',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.24,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      actions: [
        Container(
          width: 30,
          height: 30,
          margin: EdgeInsets.all(3),
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage("assets/icons/live_host_profile.png"),
              fit: BoxFit.fill,
            ),
            shape: OvalBorder(),
          ),
        ),
        Container(
          width: 30,
          height: 30,
          margin: EdgeInsets.all(3),
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage("assets/icons/live_host_profile.png"),
              fit: BoxFit.fill,
            ),
            shape: OvalBorder(),
          ),
        ),
        Container(
          width: 30,
          height: 30,
          margin: EdgeInsets.all(3),
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage("assets/icons/live_host_profile.png"),
              fit: BoxFit.fill,
            ),
            shape: OvalBorder(),
          ),
        ),

        // List.generate(4, (index) => Container(
        //   width: 30,
        //   height: 30,
        //   margin: EdgeInsets.all(3),
        //   decoration: ShapeDecoration(
        //     image: DecorationImage(
        //       image: AssetImage("assets/icons/live_host_profile.png"),
        //       fit: BoxFit.fill,
        //     ),
        //     shape: OvalBorder(),
        //   ),
        // )) ,

        // ListView.builder(
        //   itemCount: 4,
        //   shrinkWrap: true,
        //   physics: BouncingScrollPhysics(),
        //   itemBuilder: (context, index) {
        //     return Container(
        //       width: 30,
        //       height: 30,
        //       margin: EdgeInsets.all(3),
        //       decoration: ShapeDecoration(
        //         image: DecorationImage(
        //           image: AssetImage("assets/icons/live_host_profile.png"),
        //           fit: BoxFit.fill,
        //         ),
        //         shape: OvalBorder(),
        //       ),
        //     );
        //   },
        // ),

        CustomBounce(onPressed: () {}, child: Icon(Icons.close_rounded)),
      ],
    );
  }

  void initFunction() {
    final hostLiveCallBloc = context.read<HostLiveCallBloc>();

    hostLiveCallBloc.add(ApiGetLiveRoomData(roomId: widget.channelName!));
  }
}
