
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

Widget purpleBackground(){

  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      Column(
        children: [
          Container(
            height: 170,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [

                  appPurpleGradient2Color,
                  appPurpleGradient1Color,
                ],

                )
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.white,
          )
        ],
      ),
      Container(
        height: 15,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20))),
        width: double.infinity,
      ),
    ],
  );
}
