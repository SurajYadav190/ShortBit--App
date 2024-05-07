import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/host_live_call/bloc/host_live_call_bloc.dart';

class RankRow extends StatefulWidget {
  const RankRow({super.key});

  @override
  State<RankRow> createState() => _RankRowState();
}

class _RankRowState extends State<RankRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
              BlocBuilder<HostLiveCallBloc, HostLiveCallState>(
                builder: (context, state) {
                  return state.getLiveRoomData == null
                      ? SizedBox()
                      : Text(
                          state.getLiveRoomData!.data!.earnedCoins.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Segoe UI',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.24,
                          ),
                        );
                },
              )
            ],
          ),
        ),
        // SizedBox(
        //   width: 5,
        // ),
        // Container(
        //   width: 70,
        //   padding: EdgeInsets.all(5),
        //   decoration: ShapeDecoration(
        //     color: Color(0xFF27272E),
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(20),
        //     ),
        //   ),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Image.asset(
        //         'assets/icons/rank.png',
        //         height: 15,
        //         width: 15,
        //       ),
        //       SizedBox(
        //         width: 5,
        //       ),
        //       Text(
        //         'Rank',
        //         textAlign: TextAlign.center,
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 12,
        //           fontFamily: 'Segoe UI',
        //           fontWeight: FontWeight.w600,
        //           letterSpacing: -0.24,
        //         ),
        //       )
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
