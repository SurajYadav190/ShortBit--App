import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpContainer extends StatelessWidget{
  final String text;
  HelpContainer({super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height:height*0.04 ,
              width: width*0.20,
              decoration: ShapeDecoration(


              shape: RoundedRectangleBorder(
                side: BorderSide(color:Colors.grey.shade300),
              borderRadius: BorderRadius.circular(20),
              ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(text,textAlign: TextAlign.center,),
              )),
        )
      ],
    );
  }}