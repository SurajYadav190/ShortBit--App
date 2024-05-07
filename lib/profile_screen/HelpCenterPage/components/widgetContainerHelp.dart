import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_faq/flutter_faq.dart';

class WidgetHelpContainer extends StatelessWidget{
  final String text;
  final String text1;
  WidgetHelpContainer({super.key, required this.text, required this.text1});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10,left: 10,top: 8),
          child: Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFC4C3C5)),
                borderRadius: BorderRadius.circular(5),
              ),
            ),

            child: FAQ(
              showDivider: false,
                question: text,
                answer: text1,
              queStyle: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
              queDecoration: BoxDecoration(
                border: Border.all(color: Colors.white)
              ),
              ansDecoration: BoxDecoration(
                color: Colors.white,
              border: Border.all(color: Colors.white)
              ),

          ),

          ),
        )],
    );

  }}