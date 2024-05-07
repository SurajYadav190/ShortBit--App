import 'package:flutter/material.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';

Widget headingSection({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.only(top: 30,right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          InkWell(
            onTap: (){
              navPop(context: context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'Wallet',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Sk-Modernist',
              fontWeight: FontWeight.w300,
            ),
          ),
        ],),


        Icon(Icons.headset_mic_rounded,color: Colors.white,size: 27,)
      ],
    ),
  );
}