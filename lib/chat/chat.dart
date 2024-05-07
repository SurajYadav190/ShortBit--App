import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shortbit/join_live_video/components/send_gifts_section.dart';
import 'package:shortbit/one_to_one_video_call/one_to_one_video_call.dart';
import 'package:shortbit/test/firebase_chat_demo/constants.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';

class Chat extends StatefulWidget {
  final String hostId;
  final String userId;
  final String senderName;
  final String hostProfileImage;
  final String userName;

  const Chat(
      {super.key,
      required this.hostId,
      required this.userId,
      required this.senderName,
      required this.hostProfileImage,
      required this.userName});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final _firestore = FirebaseFirestore.instance;
  String username = 'User';
  String email = 'user@example.com';
  String? messageText;

  final chatMsgTextController = TextEditingController();

  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    // getMessages();
  }

  // void getMessages()async{
  //   final messages=await _firestore.collection('messages').getDocuments();
  //   for(var message in messages.documents){
  //     print(message.data);
  //   }
  // }

  // void messageStream() async {
  //   await for (var snapshot in _firestore.collection('messages').snapshots()) {
  //     snapshot.documents;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepPurple),
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff6100FF),
        leading: CustomBounce(
          onPressed: () {
            navPop(context: context);
          },
          child: Container(
              margin: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.senderName.toString(),
              style: TextStyle(
                  fontFamily: 'Poppins', fontSize: 16, color: Colors.white),
            ),
          ],
        ),
        actions: [
          widget.hostProfileImage == ""
              ? CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                    "assets/icons/live_host_profile.png",
                  ))
              : CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(widget.hostProfileImage),
                ),
          SizedBox(
            width: 10,
          ),
          CustomBounce(
            onPressed: () {
              navPush(
                  context: context,
                  action: OneToOneVideoCall(
                    hostId: widget.hostId,
                    channelName: '1234',
                  ));
            },
            child: CircleAvatar(
              radius: 20,
              child: Icon(
                Icons.video_call,
                weight: 20,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ChatStream(
            hostId: widget.hostId,
            userId: widget.userId,
            userName: widget.userName,
            receivedFrom: widget.senderName.toString(),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: kMessageContainerDecoration,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    elevation: 5,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, top: 2, bottom: 2),
                      child: TextField(
                        onChanged: (value) {
                          messageText = value;
                        },
                        controller: chatMsgTextController,
                        decoration: kMessageTextFieldDecoration,
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                    shape: CircleBorder(),
                    color: Colors.blue,
                    onPressed: () {
                      if (chatMsgTextController.text.isNotEmpty) {
                        _firestore
                            .collection('messages')
                            .doc("${widget.userId}")
                            .collection('${widget.hostId}${widget.userId}')
                            .add({
                          'sender': widget.userName,
                          'userId': widget.userId,
                          'text': chatMsgTextController.text.toString(),
                          'timestamp': DateTime.now().millisecondsSinceEpoch,
                          'senderemail': email
                        });

                        chatMsgTextController.clear();
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    )
                    // Text(
                    //   'Send',
                    //   style: kSendButtonTextStyle,
                    // ),
                    ),
                CustomBounce(
                  onPressed: () {
                    SendGiftsSection.showSendGiftsBottomSheet(
                        context: context,
                        room_id: "",
                        to_user_id: widget.hostId);
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Colors.white, Colors.white],
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.40, color: Color(0xFFFF0000)),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Image.asset(
                      'assets/icons/gift_icon.png',
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatStream extends StatelessWidget {
  final String hostId;
  final String userId;
  final String userName;
  final String receivedFrom;

  const ChatStream(
      {super.key,
      required this.hostId,
      required this.userId,
      required this.userName,
      required this.receivedFrom});

  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('messages')
          .doc("${userId}")
          .collection('${hostId}${userId}')
          .orderBy('timestamp')
          .snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        // ChatGPT you have to print here list of collection name here that is in .doc("${userId}")

        log('-----------streem ${FirebaseFirestore.instance.collection('messages').doc("${userId}")}');

        if (snapshot.hasData) {
          final messages = snapshot.data?.docs.reversed;
          List<MessageBubble> messageWidgets = [];
          for (var message in messages!) {
            final msgText = message['text'];
            final msgSender = message['sender'];
            final senderid = message['userId'];
            final currentUser = userId;

            final msgBubble = MessageBubble(
              msgText: msgText,
              msgSender: msgSender,
              user: currentUser == senderid,
              receivedFrom: receivedFrom,
              username: userName,
            );
            messageWidgets.add(msgBubble);
          }
          return Expanded(
            child: ListView(
              reverse: true,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              children: messageWidgets,
            ),
          );
        } else {
          return Center(
            child:
                CircularProgressIndicator(backgroundColor: Colors.deepPurple),
          );
        }
      },
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String msgText;
  final String msgSender;
  final String receivedFrom;
  final String username;
  final bool user;

  MessageBubble(
      {required this.msgText,
      required this.msgSender,
      required this.user,
      required this.receivedFrom,
      required this.username});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        crossAxisAlignment:
            user ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              topLeft: user ? Radius.circular(50) : Radius.circular(0),
              bottomRight: Radius.circular(50),
              topRight: user ? Radius.circular(0) : Radius.circular(50),
            ),
            color: user ? Colors.blue : Colors.white,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                msgText,
                style: TextStyle(
                  color: user ? Colors.white : Colors.blue,
                  fontFamily: 'Poppins',
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              user ? username : receivedFrom,
              style: TextStyle(
                  fontSize: 13, fontFamily: 'Poppins', color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
