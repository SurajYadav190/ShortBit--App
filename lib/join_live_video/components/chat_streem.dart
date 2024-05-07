import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatStreem extends StatelessWidget {
  final String hostId;
  final String startTime;

  const ChatStreem({super.key, required this.hostId, required this.startTime});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('${hostId}${startTime}')
          .orderBy('timestamp')
          .snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasData) {
          final messages = snapshot.data?.docs.reversed;
          List<MessageBubble> messageWidgets = [];
          for (var message in messages!) {
            final msgText = message['text'];
            final msgSender = message['sender'];
            final currentUser = "loggedInUser!.displayName";

            // ...

            final msgBubble = MessageBubble(
              msgText: msgText,
              msgSender: msgSender,
              user: currentUser == msgSender,
            );
            messageWidgets.add(msgBubble);
          }
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.6,
            child: Expanded(
              child: ListView(
                reverse: true,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                children: messageWidgets,
              ),
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
  final bool user;

  MessageBubble(
      {required this.msgText, required this.msgSender, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      decoration: ShapeDecoration(
        color: Colors.black.withOpacity(0.4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment:
            user ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            // color: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              msgSender,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w700,
                letterSpacing: -0.24,
              ),
            ),
          ),
          Material(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              topLeft: user ? Radius.circular(50) : Radius.circular(0),
              bottomRight: Radius.circular(50),
              topRight: user ? Radius.circular(0) : Radius.circular(50),
            ),
            color: user ? Colors.blue : Colors.black.withOpacity(0.6),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                msgText,
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 13,
                  fontFamily: 'Segoe UI',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
