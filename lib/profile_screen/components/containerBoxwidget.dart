import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerBoxWidget extends StatelessWidget{
  final String text;
  ContainerBoxWidget({super.key, required this.text});



  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Container(
      width: width*1,
      height: height*0.06,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
            border:Border.all(width: 1,color: Colors.grey.shade400)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

                Text(text),
            Icon(Icons.keyboard_arrow_down_outlined,color: Colors.blue,weight:100 ,)
          ],
        ),
      ),
    );
  }}