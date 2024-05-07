// import 'package:agora_rtc_engine/agora_rtc_engine.dart';
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:shortbit/test/utils/settings.dart';
//
// class AgoraTest extends StatefulWidget {
//   const AgoraTest({super.key});
//
//   @override
//   State<AgoraTest> createState() => _AgoraTestState();
// }
//
// class _AgoraTestState extends State<AgoraTest> {
//   late Map<String, dynamic> config; // Configuration parameters
//   int localUid = -1;
//
//   // String appId = "" ;
//   String channelName = "";
//   List<int> remoteUids = []; // Uids of remote users in the channel
//   bool isJoined = false; // Indicates if the local user has joined the channel
//   bool isBroadcaster = true; // Client role
//   RtcEngine? agoraEngine; // Agora engine instance
//
//   @override
//   void initState() {
//     // setupAgoraEngine();
//     // TODO: implement initState
//     super.initState();
//     setupAgoraEngine();
//   }
//
//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     appBar: AppBar(
//   //       title: Text('Agora Video call'),
//   //     ),
//   //   );
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Agora Video call'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: remoteVideoView(remoteUids.isNotEmpty ? remoteUids[0] : 0),
//           ),
//           Container(
//             width: 100.0,
//             height: 150.0,
//             child: localVideoView(),
//           ),
//           ElevatedButton(
//             onPressed: isJoined ? leave : setupAgoraEngine,
//             child: Text(isJoined ? 'Leave Channel' : 'Join Channel'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Future<void> setupAgoraEngine() async {
//     await [Permission.microphone, Permission.camera].request();
//
//     agoraEngine = await createAgoraRtcEngine();
//     await agoraEngine!.initialize(RtcEngineContext(
//       appId: appId,
//     ));
//
//     await agoraEngine!.enableVideo();
//
//     agoraEngine!.registerEventHandler(getEventHandler());
//   }
//
//   RtcEngineEventHandler getEventHandler() {
//     return RtcEngineEventHandler(
//       // Occurs when the network connection state changes
//       onConnectionStateChanged: (RtcConnection connection,
//           ConnectionStateType state, ConnectionChangedReasonType reason) {
//         if (reason ==
//             ConnectionChangedReasonType.connectionChangedLeaveChannel) {
//           remoteUids.clear();
//           isJoined = false;
//         }
//         // Notify the UI
//         Map<String, dynamic> eventArgs = {};
//         eventArgs["connection"] = connection;
//         eventArgs["state"] = state;
//         eventArgs["reason"] = reason;
//         eventCallback("onConnectionStateChanged", eventArgs);
//       },
//       // Occurs when a local user joins a channel
//       onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
//         isJoined = true;
//         messageCallback(
//             "Local user uid:${connection.localUid} joined the channel");
//         // Notify the UI
//         Map<String, dynamic> eventArgs = {};
//         eventArgs["connection"] = connection;
//         eventArgs["elapsed"] = elapsed;
//         eventCallback("onJoinChannelSuccess", eventArgs);
//       },
//       // Occurs when a remote user joins the channel
//       onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
//         remoteUids.add(remoteUid);
//         messageCallback("Remote user uid:$remoteUid joined the channel");
//         // Notify the UI
//         Map<String, dynamic> eventArgs = {};
//         eventArgs["connection"] = connection;
//         eventArgs["remoteUid"] = remoteUid;
//         eventArgs["elapsed"] = elapsed;
//         eventCallback("onUserJoined", eventArgs);
//       },
//       // Occurs when a remote user leaves the channel
//       onUserOffline: (RtcConnection connection, int remoteUid,
//           UserOfflineReasonType reason) {
//         remoteUids.remove(remoteUid);
//         messageCallback("Remote user uid:$remoteUid left the channel");
//         // Notify the UI
//         Map<String, dynamic> eventArgs = {};
//         eventArgs["connection"] = connection;
//         eventArgs["remoteUid"] = remoteUid;
//         eventArgs["reason"] = reason;
//         eventCallback("onUserOffline", eventArgs);
//       },
//     );
//   }
//
//   Widget remoteVideoView(int remoteUid) {
//     if (agoraEngine != null) {
//       return AgoraVideoView(
//         controller: VideoViewController.remote(
//           rtcEngine: agoraEngine!,
//           canvas: VideoCanvas(uid: remoteUid),
//           connection: RtcConnection(channelId: "1234"),
//         ),
//       );
//     } else {
//       // Handle the case where agoraEngine is null
//       return Container(); // or any other default widget
//     }
//   }
//
//   AgoraVideoView localVideoView() {
//     return AgoraVideoView(
//       controller: VideoViewController(
//         rtcEngine: agoraEngine!,
//         canvas: const VideoCanvas(uid: 0), // Use uid = 0 for local view
//       ),
//     );
//   }
//
//   Future<void> leave() async {
//     // Clear saved remote Uids
//     remoteUids.clear();
//
//     // Leave the channel
//     if (agoraEngine != null) {
//       await agoraEngine!.leaveChannel();
//     }
//     isJoined = false;
//
//     // Destroy the Agora engine instance
//     destroyAgoraEngine();
//   }
//
//   void destroyAgoraEngine() {
//     // Release the RtcEngine instance to free up resources
//     if (agoraEngine != null) {
//       agoraEngine!.release();
//       agoraEngine = null;
//     }
//   }
//
//   void messageCallback(String message) {
//     // Define the behavior when a message is received
//     print("Message: $message");
//     // You can add more logic here as needed
//   }
//
//   void eventCallback(String eventName, Map<String, dynamic> eventArgs) {
//     // Define the behavior when an event is received
//     print("Event: $eventName, Args: $eventArgs");
//     // You can add more logic here as needed
//   }
// }
