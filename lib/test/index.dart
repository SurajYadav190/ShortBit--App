// import 'package:agora_rtc_engine/agora_rtc_engine.dart';
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:shortbit/test/pages/call.dart';
// import 'package:shortbit/utils/common_methods/navigation_method.dart';
//
// class Index extends StatefulWidget {
//   const Index({super.key});
//
//   @override
//   State<Index> createState() => _IndexState();
// }
//
// class _IndexState extends State<Index> {
//   final _channelController = TextEditingController();
//
//   bool _validateError = false;
//   ClientRoleType? _role = ClientRoleType.clientRoleBroadcaster;
//
//   @override
//   void dispose() {
//     _channelController.dispose();
//     // TODO: implement dispose
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('index'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             TextFormField(
//               controller: _channelController,
//               decoration: InputDecoration(hintText: "Channel Name"),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             RadioListTile(
//                 value: ClientRoleType.clientRoleBroadcaster,
//                 title: Text('BroadCaster'),
//                 groupValue: _role,
//                 onChanged: (value) {
//                   setState(() {
//                     _role = value;
//                   });
//                 }),
//             RadioListTile(
//                 value: ClientRoleType.clientRoleAudience,
//                 title: Text('Audience'),
//                 groupValue: _role,
//                 onChanged: (value) {
//                   setState(() {
//                     _role = value;
//                   });
//                 }),
//             ElevatedButton(
//                 onPressed: () {
//                   onJoin();
//                 },
//                 child: Text('Join'))
//           ],
//         ),
//       ),
//     );
//   }
//
//   void onJoin() async {
//     if (await Permission.camera.request().isGranted &&
//         await Permission.microphone.request().isGranted &&
//         _channelController.text.isNotEmpty) {
//       navPush(
//           context: context,
//           action: CallPage(
//             channelName: _channelController.text.toString(),
//             role: _role,
//           ));
//     }
//   }
// }
