import 'dart:async';
import 'dart:developer';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/home_page/bloc/home_page_bloc.dart';
import 'package:shortbit/join_live_video/bloc/join_live_video_bloc.dart';
import 'package:shortbit/join_live_video/components/bottom_gifts_section.dart';
import 'package:shortbit/join_live_video/components/chat_streem.dart';
import 'package:shortbit/join_live_video/components/live_video_appBar.dart';
import 'package:shortbit/join_live_video/components/rank_row.dart';
import 'package:shortbit/test/utils/settings.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';

class JoinLiveVideo extends StatefulWidget {
  final String roomId;
  final String to_user_id;
  final String hostId;
  final String startTime;

  const JoinLiveVideo(
      {super.key,
      required this.roomId,
      required this.to_user_id,
      required this.startTime,
      required this.hostId});

  @override
  State<JoinLiveVideo> createState() => _JoinLiveVideoState();
}

class _JoinLiveVideoState extends State<JoinLiveVideo> {
  //--------- Agora
  static final _users = <int>[];
  final _infoStrings = <String>[];
  RtcEngine? _engine;

  //--------- Firebase
  final _firestore = FirebaseFirestore.instance;
  String? messageText;
  final chatMsgTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;

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
    // initialize agora sdk

    super.initState();
  }

  initFunction() {
    final joinLiveVideoBloc = context.read<JoinLiveVideoBloc>();
    joinLiveVideoBloc.add(JoinLiveVideoApi(roomId: widget.roomId.toString()));

    initializeAgora(channelName: widget.roomId.toString());
  }

  Future<void> initializeAgora({required String channelName}) async {
    log('--------channelnname--- ${channelName}');
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

    await _engine?.enableWebSdkInteroperability(true);
    await _engine?.setChannelProfile(ChannelProfile.LiveBroadcasting);
    await _engine
        ?.setClientRole(ClientRole.Audience); // Set client role to Audience
    // await _engine?.joinChannel(null, widget.roomId.toString(), null, 0);
    await _engine?.joinChannel(null, channelName.toString(), null, 0);
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
        log('------>>>>> joinChannelSuccess ${uid}');
        setState(() {
          final info = 'onJoinChannel: $channel, uid: $uid';
          _infoStrings.add(info);
        });
      },
      leaveChannel: (stats) {
        log('------>>>>> leaveChannel ${stats.userCount}');

        setState(() {
          _infoStrings.add('onLeaveChannel');
          _users.clear();
        });
      },
      userJoined: (uid, elapsed) {
        log('------>>>>> leaveChannel ${uid}');

        setState(() {
          final info = 'userJoined: $uid';
          _infoStrings.add(info);
          _users.add(uid);
        });
      },
      userOffline: (uid, reason) {
        log('------>>>>> userOffline ${uid}');

        setState(() {
          final info = 'userOffline: $uid , reason: $reason';
          _infoStrings.add(info);
          _users.remove(uid);

          final homePageBloc = context.read<HomePageBloc>();

          homePageBloc.add(AllLiveStreemApi());
          navPop(context: context);
        });
      },
      firstRemoteVideoFrame: (uid, width, height, elapsed) {
        log('------>>>>> firstRemoteVideoFrame ${uid}');

        setState(() {
          final info = 'firstRemoteVideoFrame: $uid';
          _infoStrings.add(info);
        });
      },
    ));
  }

  /// Toolbar layout (removed unnecessary controls for audience)
  Widget _toolbar() {
    return Container(
        // No controls needed for the audience
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Stack(
              children: <Widget>[
                _users == [] ? SizedBox() : _viewRows(widget.roomId.toString()),
                _toolbar(),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: LiveVideoAppBar(
                  hostId: widget.hostId,
                  engine: _engine!,
                  channelName: widget.roomId,
                ),
                body: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.85,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RankRow(),
                        // ChatSection(),
                        ChatStreem(
                          startTime: widget.startTime.toString(),
                          hostId: widget.hostId.toString(),
                        ),
                      ],
                    ),
                  ),
                ),
                bottomNavigationBar: BottomGiftSection(
                  roomId: widget.roomId.toString(),
                  engine: _engine!,
                  to_user_id: widget.hostId,
                  chatMsgTextController: chatMsgTextController,
                  firestore: _firestore,
                  startTime: widget.startTime.toString(),
                  hostId: widget.hostId.toString(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Helper function to get list of native views
  List<Widget> _getRenderViews(String channelId) {
    final List<StatefulWidget> list = [];
    list.add(RtcLocalView.SurfaceView());
    _users.forEach((int uid) => list.add(RtcRemoteView.SurfaceView(
          uid: uid,
          channelId: channelId,
        )));
    setState(() {});
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

  /// Video layout wrapper
  ///
  ///  void _onCallEnd(BuildContext context) {
  //     Navigator.pop(context);
  //   }

  /// Video layout wrapper (Modified to show only host's video)
  Widget _viewRows(String channelId) {
    final views = _getRenderViews(channelId);
    return Container(
      child: Column(
        children: <Widget>[
          _expandedVideoRow([views[1]]),
          // Show only the first view (host's video)
        ],
      ),
    );
  }

  void turnIsGiftSendCelebrationFalseMethod() {
    final joinLiveVideoBloc = context.read<JoinLiveVideoBloc>();

    if (joinLiveVideoBloc.state.isGiftSendCelebration == true) {
      Timer(Duration(seconds: 5), () {
        joinLiveVideoBloc.add(TurnIsGiftSendCelebrationFalse());
      });
    }
  }

// Widget _viewRows() {
//   final views = _getRenderViews();
//
//   // Check if there is at least one view
//   if (views.isNotEmpty) {
//     return Container(
//       child: Column(
//         children: <Widget>[
//           _expandedVideoRow([views[0]]),
//           // Show only the first view (host's video)
//         ],
//       ),
//     );
//   } else {
//     return Container(); // Return an empty container if there are no views
//   }
// }
}
