import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shortbit/utils/styles.dart';


class CustomAppbarDognationLogo extends StatefulWidget {
  const CustomAppbarDognationLogo({Key? key}) : super(key: key);

  @override
  State<CustomAppbarDognationLogo> createState() =>
      _CustomAppbarDognationLogoState();
}

class _CustomAppbarDognationLogoState extends State<CustomAppbarDognationLogo> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(80),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFCC10D),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          ),
        ),
        padding: const EdgeInsets.only(top: 30, left: 0, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Bounce(
                  duration: bounceduration,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                Text(
                  'Orientation',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: SvgPicture.asset(
                    'assets/icons/dog_nation_logo_left.svg',
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
