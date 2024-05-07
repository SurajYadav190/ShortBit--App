// import 'package:agora_rtc_engine/agora_rtc_engine.dart';
// import 'package:flutter/material.dart';
// import 'package:shortbit/test/utils/settings.dart';
//
// class CallPage extends StatefulWidget {
//   final String? channelName;
//   final ClientRoleType? role;
//
//   const CallPage({super.key, this.channelName, this.role});
//
//   @override
//   State<CallPage> createState() => _CallPageState();
// }
//
// class _CallPageState extends State<CallPage> {
//   final _users = <int>[];
//   final _infoStrings = <String>[];
//   bool muted = false;
//   bool viewPanel = false;
//   late RtcEngine _engine;
//
//   @override
//   void dispose() {
//     _users.clear();
//     _engine.leaveChannel();
//     // _engine.destroy();
//     // TODO: implement dispose
//     super.dispose();
//   }
//
//   @override
//   void initState() {
//     initialise();
//
//     // TODO: implement initState
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('call'),
//       ),
//     );
//   }
//
//   void initialise() async {
//     if (appId.isEmpty) {
//       setState(() {
//         _infoStrings.add('App_id missing, please add in the settings.dart');
//         _infoStrings.add('Agro Engine is not started');
//       });
//       return;
//     }
//
//     // _initAgora
//
//     _engine = createAgoraRtcEngine();
//     _engine.initialize(RtcEngineContext(appId: appId));
//     await _engine.enableVideo();
//     await _engine
//         .setChannelProfile(ChannelProfileType.channelProfileLiveBroadcasting);
//     await _engine.setClientRole(role: widget.role!);
//
//     // add agora Event handler
//
//     _addAgoraEventHandler();
//
//     VideoEncoderConfiguration configuration = VideoEncoderConfiguration(
//         dimensions: VideoDimensions(width: 1000, height: 1000));
//     // configuration.dimensions = VideoDimensions(width: 1000,height: 1000);
//     await _engine.setVideoEncoderConfiguration(configuration);
//     await _engine.joinChannel(
//         token: token,
//         channelId: widget.channelName!,
//         uid: 0,
//         options: ChannelMediaOptions());
//   }
//
//   void _addAgoraEventHandler() {
//     _engine.registerEventHandler(getEventHandler());
//   }
//
//   RtcEngineEventHandler getEventHandler() {
//     return RtcEngineEventHandler(
//       // Occurs when the network connection state changes
//       onConnectionStateChanged: (RtcConnection connection,
//           ConnectionStateType state, ConnectionChangedReasonType reason) {
//         if (reason ==
//             ConnectionChangedReasonType.connectionChangedLeaveChannel) {
//           // remoteUids.clear();
//           // isJoined = false;
//           _users.clear();
//         }
//         // Notify the UI
//         Map<String, dynamic> eventArgs = {};
//         eventArgs["connection"] = connection;
//         eventArgs["state"] = state;
//         eventArgs["reason"] = reason;
//         // eventCallback("onConnectionStateChanged", eventArgs);
//       },
//       // Occurs when a local user joins a channel
//       onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
//         // isJoined = true;
//         // messageCallback(
//         //     "Local user uid:${connection.localUid} joined the channel");
//         // Notify the UI
//         Map<String, dynamic> eventArgs = {};
//         eventArgs["connection"] = connection;
//         eventArgs["elapsed"] = elapsed;
//         // eventCallback("onJoinChannelSuccess", eventArgs);
//       },
//       // Occurs when a remote user joins the channel
//       onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
//         _users.add(remoteUid);
//         // messageCallback("Remote user uid:$remoteUid joined the channel");
//         // Notify the UI
//         Map<String, dynamic> eventArgs = {};
//         eventArgs["connection"] = connection;
//         eventArgs["remoteUid"] = remoteUid;
//         eventArgs["elapsed"] = elapsed;
//         // eventCallback("onUserJoined", eventArgs);
//       },
//       // Occurs when a remote user leaves the channel
//       onUserOffline: (RtcConnection connection, int remoteUid,
//           UserOfflineReasonType reason) {
//         _users.remove(remoteUid);
//         // messageCallback("Remote user uid:$remoteUid left the channel");
//         // Notify the UI
//         Map<String, dynamic> eventArgs = {};
//         eventArgs["connection"] = connection;
//         eventArgs["remoteUid"] = remoteUid;
//         eventArgs["reason"] = reason;
//         // eventCallback("onUserOffline", eventArgs);
//       },
//     );
//   }
//
//   AgoraVideoView remoteVideoView(int remoteUid) {
//     return AgoraVideoView(
//       controller: VideoViewController.remote(
//         rtcEngine: _engine!,
//         canvas: VideoCanvas(uid: remoteUid),
//         connection: RtcConnection(channelId: widget.channelName),
//       ),
//     );
//   }
//
//   AgoraVideoView localVideoView() {
//     return AgoraVideoView(
//       controller: VideoViewController(
//         rtcEngine: _engine!,
//         canvas: const VideoCanvas(uid: 0), // Use uid = 0 for local view
//       ),
//     );
//   }
//
//   Future<void> leave() async {
//     // Clear saved remote Uids
//     _users.clear();
//
//     // Leave the channel
//     if (_engine != null) {
//       await _engine!.leaveChannel();
//     }
//     // isJoined = false;
//
//     // Destroy the Agora engine instance
//     destroyAgoraEngine();
//   }
//
//   void destroyAgoraEngine() {
//     // Release the RtcEngine instance to free up resources
//     if (_engine != null) {
//       _engine!.release();
//       // _engine = null;
//     }
//   }
// }
