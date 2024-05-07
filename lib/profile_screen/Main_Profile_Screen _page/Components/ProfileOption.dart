import 'package:flutter/cupertino.dart';

class ProfileOption extends StatelessWidget {
  final String icon1;
  final String text1;

  const ProfileOption({super.key, required this.icon1, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          icon1,
        ),
        Text(
          text1,
          style: TextStyle(
            fontSize: 25,
          ),
        )
      ],
    );
  }
}