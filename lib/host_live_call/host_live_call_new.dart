import 'dart:async';
import 'dart:developer';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shortbit/host_live_call/bloc/host_live_call_bloc.dart';
import 'package:shortbit/join_live_video/components/chat_streem.dart';
import 'package:shortbit/join_live_video/components/live_video_appBar.dart';
import 'package:shortbit/join_live_video/components/rank_row.dart';
import 'package:shortbit/test/utils/settings.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';

class HostLiveCallNew extends StatefulWidget {
  final String? channelName;
  final String hostId;
  final String startTime;

  const HostLiveCallNew(
      {super.key,
      this.channelName,
      required this.hostId,
      required this.startTime});

  @override
  State<HostLiveCallNew> createState() => _HostLiveCallNewState();
}

class _HostLiveCallNewState extends State<HostLiveCallNew> {
  static final _users = <int>[];
  final _infoStrings = <String>[];
  bool muted = false;
  RtcEngine? _engine;

  Timer? _timer;

  String countDownShow = "3";
  bool isCountDownShowing = true;

  bool isEngineStarted = false;

  @override
  void dispose() {
    // clear users
    _users.clear();
    // destroy sdk
    _engine?.leaveChannel();
    _engine?.destroy();
    super.dispose();
  }

  @override
  void initState() {
    initFunction();
    super.initState();
    // initialize agora sdk
    initialize(channelName: widget.channelName!);
  }

  Future<void> initialize({required String channelName}) async {
    log('-------channel name ${channelName}');

    if (appId.isEmpty) {
      setState(() {
        _infoStrings.add(
          'APP_ID missing, please provide your APP_ID in settings.dart',
        );
        _infoStrings.add('Agora Engine is not starting');
      });
      return;
    }
    await _initAgoraRtcEngine();
    _addAgoraEventHandlers();

    String channelId = widget.channelName ?? channelName;

    log('---channelIUd --- ${channelId}');

    await _engine?.enableWebSdkInteroperability(true);
    await _engine?.setChannelProfile(ChannelProfile.LiveBroadcasting);
    await _engine?.setClientRole(ClientRole.Broadcaster);
    await _engine?.joinChannel(null, channelId, null, 0).then((value) {
      isEngineStarted = true;

      setState(() {});
    });

    // await _engine?.setBeautyEffectOptions(
    //     true,
    //     BeautyOptions(
    //         lighteningContrastLevel: LighteningContrastLevel.High,
    //         lighteningLevel: 0,
    //         rednessLevel: 0,
    //         smoothnessLevel: 1));
    //
    // await _engine?.enableVirtualBackground(
    //     true,
    //     VirtualBackgroundSource(
    //       color: 0xFFB6C1,
    //       // backgroundSourceType: VirtualBackgroundSourceType.Color,
    //       // blurDegree: VirtualBackgroundBlurDegree.High,
    //       // source: "assets/images/intro_first_screen.jpg"
    //     ));

    await _engine?.enableFaceDetection(true);
  }

  /// Create agora sdk instance and initialize
  Future<void> _initAgoraRtcEngine() async {
    _engine = await RtcEngine.create(appId);
    await _engine?.enableVideo();
  }

  /// Add agora event handlers
  void _addAgoraEventHandlers() {
    _engine?.setEventHandler(RtcEngineEventHandler(
      error: (code) {
        setState(() {
          final info = 'onError: $code';
          _infoStrings.add(info);
        });
      },
      joinChannelSuccess: (channel, uid, elapsed) {
        setState(() {
          final info = 'onJoinChannel: $channel, uid: $uid';
          _infoStrings.add(info);
        });
      },
      leaveChannel: (stats) {
        setState(() {
          _infoStrings.add('onLeaveChannel');
          _users.clear();
        });
      },
      userJoined: (uid, elapsed) {
        setState(() {
          final info = 'userJoined: $uid';
          _infoStrings.add(info);
          _users.add(uid);
        });
      },
      userOffline: (uid, reason) {
        setState(() {
          final info = 'userOffline: $uid , reason: $reason';
          _infoStrings.add(info);
          _users.remove(uid);
        });
      },
      firstRemoteVideoFrame: (uid, width, height, elapsed) {
        setState(() {
          final info = 'firstRemoteVideoFrame: $uid';
          _infoStrings.add(info);
        });
      },
    ));
  }

  /// Toolbar layout
  Widget _toolbar() {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RawMaterialButton(
            onPressed: _onToggleMute,
            child: Icon(
              muted ? Icons.mic_off : Icons.mic,
              color: muted ? Colors.white : Colors.blueAccent,
              size: 20.0,
            ),
            shape: CircleBorder(),
            elevation: 2.0,
            fillColor: muted ? Colors.blueAccent : Colors.white,
            padding: const EdgeInsets.all(12.0),
          ),
          RawMaterialButton(
            onPressed: () => _onCallEnd(context),
            child: Icon(
              Icons.call_end,
              color: Colors.white,
              size: 35.0,
            ),
            shape: CircleBorder(),
            elevation: 2.0,
            fillColor: Colors.redAccent,
            padding: const EdgeInsets.all(15.0),
          ),
          RawMaterialButton(
            onPressed: _onSwitchCamera,
            child: Icon(
              Icons.switch_camera,
              color: Colors.blueAccent,
              size: 20.0,
            ),
            shape: CircleBorder(),
            elevation: 2.0,
            fillColor: Colors.white,
            padding: const EdgeInsets.all(12.0),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // endLiveSessionAPI();
        // onGoingLiveAPI();

        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: isCountDownShowing == true
            ? Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Center(
                  child: Text(
                    countDownShow,
                    style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              )
            : Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Stack(
                      children: <Widget>[
                        _viewRows(),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Scaffold(
                            backgroundColor: Colors.transparent,
                            appBar: isEngineStarted == true
                                ? LiveVideoAppBar(
                                    hostId: widget.hostId,
                                    channelName: widget.channelName!,
                                    engine: _engine!,
                                  )
                                : null,
                            body: SingleChildScrollView(
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.85,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RankRow(),
                                    ChatStreem(
                                      startTime: widget.startTime.toString(),
                                      hostId: widget.hostId.toString(),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            bottomNavigationBar: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Image.asset(
                                      "assets/icons/chat_icon.png",
                                      height: 50,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      CustomBounce(
                                        onPressed: () {
                                          _onCallEnd(context);
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          width: 70,
                                          height: 35,
                                          decoration: ShapeDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment(0.00, -1.00),
                                              end: Alignment(0, 1),
                                              colors: [
                                                Color(0xFFFF1D61),
                                                Color(0xFFFF1E0F)
                                              ],
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Exit',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontFamily: 'Segoe UI',
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: -0.24,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        decoration: ShapeDecoration(
                                          color: Colors.black,
                                          shape: OvalBorder(),
                                        ),
                                        child: Image.asset(
                                          'assets/icons/menu_icon.png',
                                          height: 35,
                                          width: 35,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            // bottomNavigationBar: _toolbar(),
                          ),
                        ),
                        // Positioned(
                        //   bottom: 100,
                        //   child: BlocBuilder<JoinLiveVideoBloc, JoinLiveVideoState>(
                        //     builder: (context, state) {
                        //       turnIsGiftSendCelebrationFalseMethod();
                        //       return state.isGiftSendCelebration == true
                        //           ? Lottie.asset(
                        //               'assets/lottie_animation/gifts_send_animation.json',
                        //               height: MediaQuery.of(context).size.height * 0.5,
                        //               width: MediaQuery.of(context).size.height * 0.5)
                        //           : SizedBox();
                        //     },
                        //   ),
                        // )
                      ],
                    )
                  ],
                ),
              ),
      ),
    );

    //---------------

    // body: Center(
    //   child:
    //   Stack(
    //     alignment: Alignment.center,
    //     children: [
    //       Stack(
    //         children: <Widget>[
    //           _viewRows(),
    //           _toolbar(),
    //         ],
    //       ),
    //       Container(
    //         height: 100,
    //         width: 100,
    //         color: Colors.red,
    //       )
    //     ],
    //   ),
    // ),
  }

  /// Helper function to get list of native views
  List<Widget> _getRenderViews(String channelId) {
    final List<StatefulWidget> list = [];
    list.add(RtcLocalView.SurfaceView());
    _users.forEach((int uid) => list.add(RtcRemoteView.SurfaceView(
          uid: uid,
          channelId: channelId,
        )));
    return list;
  }

  /// Video view wrapper
  Widget _videoView(view) {
    return Expanded(child: Container(child: view));
  }

  /// Video view row wrapper
  Widget _expandedVideoRow(List<Widget> views) {
    final wrappedViews = views.map<Widget>(_videoView).toList();
    return Expanded(
      child: Row(
        children: wrappedViews,
      ),
    );
  }

  Widget _viewRows() {
    final List<Widget> views = [_videoView(RtcLocalView.SurfaceView())];
    return Container(
      child: Column(
        children: <Widget>[
          _expandedVideoRow(views),
        ],
      ),
    );
  }

  // /// Video layout wrapper
  // Widget _viewRows(String channelId) {
  //   final views = _getRenderViews(channelId);
  //   switch (views.length) {
  //     case 1:
  //       return Container(
  //           child: Column(
  //         children: <Widget>[_videoView(views[0])],
  //       ));
  //     // case 2:
  //     //   return Container(
  //     //       child: Column(
  //     //     children: <Widget>[
  //     //       _expandedVideoRow([views[0]]),
  //     //       _expandedVideoRow([views[1]])
  //     //     ],
  //     //   ));
  //     // case 3:
  //     //   return Container(
  //     //       child: Column(
  //     //     children: <Widget>[
  //     //       _expandedVideoRow(views.sublist(0, 2)),
  //     //       _expandedVideoRow(views.sublist(2, 3))
  //     //     ],
  //     //   ));
  //     // case 4:
  //     //   return Container(
  //     //       child: Column(
  //     //     children: <Widget>[
  //     //       _expandedVideoRow(views.sublist(0, 2)),
  //     //       _expandedVideoRow(views.sublist(2, 4))
  //     //     ],
  //     //   ));
  //     default:
  //   }
  //   return Container();
  // }

  void _onCallEnd(BuildContext context) {
    endLiveSessionAPI();

    // onGoingLiveAPI();

    Navigator.pop(context);
  }

  endLiveSessionAPI() {
    log('host ended called ');
    final hostLiveCallBloc = context.read<HostLiveCallBloc>();
    // log('host ended called ${hostLiveCallBloc.state.createLiveRoom!.data!.sId.toString()} ');

    hostLiveCallBloc.add(ApiEndLiveRoom(
        room_id: widget.channelName ??
            hostLiveCallBloc.state.createLiveRoom!.data!.sId.toString()));
  }

  // onGoingLiveAPI() {
  //   log('host ApiOnGoingLive ');
  //   final hostLiveCallBloc = context.read<HostLiveCallBloc>();
  //
  //   hostLiveCallBloc.add(ApiOnGoingLive());
  // }

  void _onToggleMute() {
    setState(() {
      muted = !muted;
    });
    _engine?.muteLocalAudioStream(muted);
  }

  void _onSwitchCamera() {
    _engine?.switchCamera();
  }

  void initFunction() async {
    startCountdown();

    var status = await Permission.camera.status;
    if (status.isDenied) {
      await Permission.camera.request();
    }

    var microphoneStaus = await Permission.microphone.status;
    if (microphoneStaus.isDenied) {
      await Permission.microphone.request();
    }
  }

  void startCountdown() {
    int countDown = 2;

    Timer.periodic(
      Duration(seconds: 1),
      (Timer timer) {
        if (countDown >= 0) {
          countDownShow = countDown.toString();
          setState(() {});
          countDown--;
        } else {
          countDownShow = "Go";
          isCountDownShowing = false;
          timer.cancel();
          setState(() {});
        }
      },
    );
  }
}
