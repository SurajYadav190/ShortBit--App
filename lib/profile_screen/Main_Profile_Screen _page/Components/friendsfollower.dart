import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FriendFollower extends StatelessWidget{
  final String text1;
  final String text2;
  FriendFollower({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text1,style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w600,
        ),),
        Text(text2,style: TextStyle(
          color: Color(0xCC393939),
          fontSize: 20,
          fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w400,

        ),)
      ],
    );
  }
}