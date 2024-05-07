import 'package:flutter/material.dart';

class IntroData extends StatelessWidget {
  final String image;
  final Widget title;
  final String subTitle;

  const IntroData({
    super.key,
    required this.image,
    required this.subTitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image.asset(
            image,
            fit: BoxFit.fill,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
          ),
          title,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF4E4E4E),
                fontSize: 14,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
