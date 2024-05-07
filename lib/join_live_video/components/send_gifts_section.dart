import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/join_live_video/bloc/join_live_video_bloc.dart';
import 'package:shortbit/join_live_video/components/gifts_icons.dart';

class SendGiftsSection extends StatefulWidget {
  final String to_user_id;
  final String room_id;

  const SendGiftsSection(
      {Key? key, required this.to_user_id, required this.room_id})
      : super(key: key);

  @override
  State<SendGiftsSection> createState() => _SendGiftsSectionState();

  static showSendGiftsBottomSheet(
      {required BuildContext context, required String to_user_id,
        required String room_id,}) =>
      showModalBottomSheet(
        // backgroundColor: Color(0xFF82858C),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(36),
            topRight: Radius.circular(36),
          ),
        ),
        context: context,

        builder: (context) =>
            SendGiftsSection(to_user_id: to_user_id, room_id: room_id,),
      );
}

class _SendGiftsSectionState extends State<SendGiftsSection> {
  @override
  void initState() {
    initFunction();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Color(0xFF121119), // Set the background color here
          ),
          child: Column(
            children: [
              TabBar(
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                indicator: BoxDecoration(),
                // Set indicator to null
                indicatorWeight: 0.0,
                // Set indicatorWeight to 0.0
                labelStyle: TextStyle(
                  color: Color(0xFFFFA801),
                ),
                unselectedLabelColor: Color(0xFF82858C),
                dividerColor: Color(0xFF121119),
                tabs: [
                  Tab(
                    child: Text(
                      'Gift',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Lucky',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Taste',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Fans club',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    GiftsIcons(
                      to_user_id: widget.to_user_id, room_id: widget.room_id,),
                    GiftsIcons(
                      to_user_id: widget.to_user_id, room_id: widget.room_id,),
                    GiftsIcons(
                      to_user_id: widget.to_user_id, room_id: widget.room_id,),
                    GiftsIcons(
                      to_user_id: widget.to_user_id, room_id: widget.room_id,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void initFunction() {
    final joinLiveVideoBloc = context.read<JoinLiveVideoBloc>();
    joinLiveVideoBloc.add(GetGifts());
  }
}
