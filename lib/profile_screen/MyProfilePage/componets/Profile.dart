import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget{
  final String Text1;
  Profile({super.key, required this.Text1});


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height*1;
    final width=MediaQuery.of(context).size.width*1;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(Text1,style: TextStyle(

            color: Colors.black.withOpacity(0.6000000238418579),
            fontSize: 18,
            fontFamily: 'Segoe UI',
            fontWeight: FontWeight.w400,
             letterSpacing: -0.24,



          ),
          textAlign: TextAlign.center,),
        ),
        Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey.shade500,size: 20,)
      ],
    );
  }}