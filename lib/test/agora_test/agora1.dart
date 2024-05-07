// import 'package:flutter/material.dart';
// import 'package:agora_rtc_engine/agora_rtc_engine.dart';
// import 'package:permission_handler/permission_handler.dart';
//
// class VideoCallScreen extends StatefulWidget {
//   @override
//   _VideoCallScreenState createState() => _VideoCallScreenState();
// }
//
// class _VideoCallScreenState extends State<VideoCallScreen> {
//   late RtcEngine _engine; // Agora engine instance
//   bool _joined = false;
//   int _remoteUid = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     _initAgoraRtcEngine();
//   }
//
//   Future<void> _initAgoraRtcEngine() async {
//     await [Permission.microphone, Permission.camera].request();
//
//     _engine = await RtcEngine.create('YOUR_APP_ID');
//
//     // Implement Agora engine setup, event handlers, and other configurations here
//     // ...
//
//     await _engine.enableVideo();
//     await _engine.startPreview();
//   }
//
//   void _joinChannel() async {
//     // await _engine.joinChannel(token: token, channelId: channelId, uid: uid, options: options);
//     setState(() {
//       _joined = true;
//     });
//   }
//
//   void _leaveChannel() async {
//     await _engine.leaveChannel();
//     setState(() {
//       _joined = false;
//     });
//   }
//
//   @override
//   void dispose() {
//     // Leave the channel and clean up resources when the screen is disposed
//     _engine.destroy();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Video Calling'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Local video view
//             Container(
//               width: 200,
//               height: 150,
//               child: _joined ? _getLocalView() : SizedBox.shrink(),
//             ),
//             SizedBox(height: 20),
//             // Remote video view
//             Container(
//               width: 200,
//               height: 150,
//               child: _joined ? _getRemoteView() : SizedBox.shrink(),
//             ),
//             SizedBox(height: 20),
//             // Join/Leave button
//             ElevatedButton(
//               onPressed: _joined ? _leaveChannel : _joinChannel,
//               child: Text(_joined ? 'Leave Channel' : 'Join Channel'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _getLocalView() {
//     return AgoraRenderWidget(uid: 0, local: true, engine: _engine);
//   }
//
//   Widget _getRemoteView() {
//     return AgoraRenderWidget(uid: _remoteUid, local: false, engine: _engine);
//   }
// }
//
// class AgoraRenderWidget extends StatelessWidget {
//   final int uid;
//   final bool local;
//   final RtcEngine engine;
//
//   AgoraRenderWidget({
//     required this.uid,
//     required this.local,
//     required this.engine,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return TextureView(
//       uid: uid,
//       local: local,
//       engine: engine,
//     );
//   }
// }
