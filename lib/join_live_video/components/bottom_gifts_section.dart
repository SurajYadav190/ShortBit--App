import 'dart:developer';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/create_account/bloc/create_account_bloc.dart';
import 'package:shortbit/join_live_video/bloc/join_live_video_bloc.dart';
import 'package:shortbit/join_live_video/components/send_gifts_section.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';

class BottomGiftSection extends StatefulWidget {
  final String roomId;
  final String to_user_id;
  final String hostId;
  final String startTime;
  final RtcEngine engine;
  final TextEditingController chatMsgTextController;
  final FirebaseFirestore firestore;

  const BottomGiftSection(
      {super.key,
      required this.roomId,
      required this.engine,
      required this.to_user_id,
      required this.chatMsgTextController,
      required this.firestore,
      required this.startTime,
      required this.hostId});

  @override
  State<BottomGiftSection> createState() => _BottomGiftSectionState();
}

class _BottomGiftSectionState extends State<BottomGiftSection> {
  @override
  void initState() {
    initFunction();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: TextFormField(
                            maxLines: 1,
                            controller: widget.chatMsgTextController,
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
                    CustomBounce(
                      onPressed: () {
                        final createAccountBloc =
                            context.read<CreateAccountBloc>();

                        log('firebase chat node ${widget.hostId}${widget.startTime}');

                        widget.firestore
                            .collection('${widget.hostId}${widget.startTime}')
                            .add({
                          'sender': createAccountBloc
                              .state.getProfileModel?.data?.name
                              ?.toString(),
                          'text': widget.chatMsgTextController.text.toString(),
                          'timestamp': DateTime.now().millisecondsSinceEpoch,
                          // 'senderemail': 'email'
                        });
                        widget.chatMsgTextController.clear();
                      },
                      child: Container(
                          // height: 10,
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              color: Colors.blue, shape: BoxShape.circle),
                          child: Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 22,
                          )),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            CustomBounce(
              onPressed: () {
                SendGiftsSection.showSendGiftsBottomSheet(
                    context: context,
                    room_id: widget.roomId,
                    to_user_id: widget.to_user_id);
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Image.asset(
                  'assets/icons/gift_icon.png',
                  height: 25,
                  width: 25,
                ),
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
            CustomBounce(
              onPressed: () {
                final joinLiveVideoBloc = context.read<JoinLiveVideoBloc>();
                joinLiveVideoBloc.add(LeaveLiveVideoApi(
                    roomId: widget.roomId.toString(),
                    engine: widget.engine,
                    context: context));
              },
              child: Container(
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
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }

  void initFunction() {
    final createAccountBloc = context.read<CreateAccountBloc>();

    createAccountBloc.add(GetUser());
  }
}
