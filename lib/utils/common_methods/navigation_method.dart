import 'package:flutter/material.dart';



void navPush({required BuildContext context, required Widget action}) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (ctx) => action),
  );

  // Navigator.push(
  //   context,
  //   PageTransition(child: action, type: PageTransitionType.rightToLeft,duration: Duration(milliseconds: 400)),
  // );
}

void navPushReplace({required BuildContext context, required Widget action}) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (ctx) => action),
  );
}

void navPushRemove({required BuildContext context, required Widget action}) {
  Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (ctx) => action), (route) => false);
}

void navPop({required BuildContext context}) {
  Navigator.pop(context);
}
