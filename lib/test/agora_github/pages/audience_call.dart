import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;
import 'package:flutter/material.dart';
import 'package:shortbit/test/utils/settings.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';

class AudienceCAll extends StatefulWidget {
  final String? channelName;

  const AudienceCAll({super.key, this.channelName});

  @override
  State<AudienceCAll> createState() => _AudienceCAllState();
}

class _AudienceCAllState extends State<AudienceCAll> {
  static final _users = <int>[];
  final _infoStrings = <String>[];
  RtcEngine? _engine;

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
    super.initState();
    // initialize agora sdk
    initialize();
  }

  Future<void> initialize() async {
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
    await _engine?.joinChannel(null, widget.channelName!, null, 0);
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
                _viewRows(),
                _toolbar(),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.transparent,
                  title: Container(
                    width: 183,
                    // height: 45,
                    padding: EdgeInsets.all(5),
                    decoration: ShapeDecoration(
                      color: Colors.black.withOpacity(0.41999998688697815),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/icons/live_host_profile.png"),
                              fit: BoxFit.fill,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Riaina**',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Segoe UI',
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.24,
                              ),
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
                                      image: AssetImage(
                                          "assets/icons/profile_icon.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '5',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Segoe UI',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: -0.24,
                                  ),
                                ),
                              ],
                            ),
                          ],
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
                          image:
                              AssetImage("assets/icons/live_host_profile.png"),
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
                          image:
                              AssetImage("assets/icons/live_host_profile.png"),
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
                          image:
                              AssetImage("assets/icons/live_host_profile.png"),
                          fit: BoxFit.fill,
                        ),
                        shape: OvalBorder(),
                      ),
                    ),
                    CustomBounce(
                        onPressed: () {
                          navPop(context: context);
                        },
                        child: Icon(Icons.close_rounded)),
                  ],
                ),
                body: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.85,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 90,
                              padding: EdgeInsets.all(5),
                              decoration: ShapeDecoration(
                                color: Color(0xFF27272E),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/icons/asd.png',
                                    height: 15,
                                    width: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '15,383.4K',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -0.24,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 70,
                              padding: EdgeInsets.all(5),
                              decoration: ShapeDecoration(
                                color: Color(0xFF27272E),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/icons/rank.png',
                                    height: 15,
                                    width: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Rank',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Segoe UI',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -0.24,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: ListView.builder(
                            reverse: true,
                            itemCount: 18,
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    margin: EdgeInsets.all(5),
                                    decoration: ShapeDecoration(
                                      color: Colors.black.withOpacity(0.4),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      'Saurabh894ut8 Joined the room $index',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Segoe UI',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.24,
                                      ),
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                bottomNavigationBar: Container(
                  // padding: EdgeInsets.only(
                  //     bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Container(
                    height: 50,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: ShapeDecoration(
                            color: Colors.black.withOpacity(0.5),
                            shape: OvalBorder(),
                          ),
                          child: Image.asset(
                            'assets/icons/volume.png',
                            height: 25,
                            width: 25,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icons/comment_icon.png',
                                  height: 25,
                                  width: 25,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: TextFormField(
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Segoe UI',
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.none),
                                    decoration: InputDecoration(
                                      hintText: "Say Hi",
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      hintStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Segoe UI',
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.none),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Colors.white, Colors.white],
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 0.40, color: Color(0xFFFF0000)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Image.asset(
                            'assets/icons/gift_icon.png',
                            height: 25,
                            width: 25,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
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
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            color: Colors.black,
                            shape: OvalBorder(),
                          ),
                          child: Image.asset(
                            'assets/icons/cross_icon.png',
                            height: 35,
                            width: 35,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Helper function to get list of native views
  List<Widget> _getRenderViews() {
    final List<StatefulWidget> list = [];
    list.add(RtcLocalView.SurfaceView());
    _users.forEach((int uid) => list.add(RtcRemoteView.SurfaceView(
          uid: uid,
          channelId: '',
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
  Widget _viewRows() {
    final views = _getRenderViews();
    return Container(
      child: Column(
        children: <Widget>[
          _expandedVideoRow([views[1]]),
          // Show only the first view (host's video)
        ],
      ),
    );
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
