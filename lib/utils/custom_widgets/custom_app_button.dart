import 'package:flutter/material.dart';
import 'package:shortbit/utils/app_colors.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';

class CustomAppButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;
  final double? buttonWidth;

  const CustomAppButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.color,
      this.textColor,
      this.buttonWidth})
      : super(key: key);

  @override
  State<CustomAppButton> createState() => _CustomAppButtonState();
}

class _CustomAppButtonState extends State<CustomAppButton> {
  @override
  Widget build(BuildContext context) {
    return CustomBounce(
      onPressed: widget.onPressed,
      child: Container(
        height: 50,
        width: widget.buttonWidth ?? MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: ShapeDecoration(
          color: widget.color ?? primaryBlueColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.5,
              strokeAlign: BorderSide.strokeAlignCenter,
              color: primaryBlueColor,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Center(
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: widget.textColor ?? Colors.white,
              fontSize: 15,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
              letterSpacing: -0.32,
            ),
          ),
        ),
      ),
    );
  }
}
