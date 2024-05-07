import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? weight;
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingBottom;
  final double? paddingTop;
  final Color? backGroundColor;

  const AppBackground(
      {super.key,
      required this.child,
      this.height,
      this.weight,
      this.paddingLeft,
      this.paddingRight,
      this.paddingBottom,
      this.paddingTop,
      this.backGroundColor});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      padding: EdgeInsets.fromLTRB(paddingLeft ?? 10, paddingTop ?? 10,
          paddingRight ?? 10, paddingBottom ?? 10),
      // height: height ?? MediaQuery.of(context).size.height,
      width: weight ?? MediaQuery.of(context).size.width,
      color: backGroundColor ?? Colors.white,
      child: child,
    ));
  }
}
