import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String)? onChanged;
  final Function()? onTap;
  final Function(String)? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyBoardType;
  final bool? enabled;
  final bool? obscureText;

  final Widget? suffixIcon;
  final int? maxline;

  final double? height;

  final Color? hintColor;

  const CustomTextFormField({
    required this.controller,
    required this.hintText,
    this.onChanged,
    this.onTap,
    this.onSubmitted,
    this.enabled,
    this.inputFormatters,
    this.keyBoardType,
    this.suffixIcon,
    this.maxline,
    this.height,
    this.hintColor,
    this.obscureText,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 50,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.only(left: 10),
      decoration: ShapeDecoration(
        color: Color(0xFFF4F4F9),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.50,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFFF4F4F9),
          ),
          borderRadius: BorderRadius.circular(9),
        ),
      ),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyBoardType,
        onChanged: widget.onChanged,
        onFieldSubmitted: widget.onSubmitted,
        inputFormatters: widget.inputFormatters,
        onTap: widget.onTap,
        enabled: widget.enabled,
        maxLines: widget.maxline,
        obscureText: widget.obscureText ?? false,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: widget.hintColor ?? Color(0xFF9D9D9D),
            fontSize: 14,
            fontFamily: 'Segoe UI',
            fontWeight: FontWeight.w400,
          ),
          border: InputBorder.none,
          suffixIcon: widget.suffixIcon,
        ),
        style: TextStyle(
          color: Color(0xFF9D9D9D),
          fontSize: 12,
          fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
