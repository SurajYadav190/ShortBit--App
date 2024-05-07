import 'package:flutter/material.dart';

class HostCard extends StatefulWidget {
  final String roomID;

  final String hostName;

  final String hostProfileImage;
  final String peakViewCount;
  final String earned_coins;
  final String level;
  final String language;

  const HostCard(
      {super.key,
      required this.roomID,
      required this.hostName,
      required this.hostProfileImage,
      required this.peakViewCount,
      required this.earned_coins,
      required this.level,
      required this.language});

  @override
  State<HostCard> createState() => _HostCardState();
}

class _HostCardState extends State<HostCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 250,
      // width: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                widget.hostProfileImage,
              ),
              fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(10)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.2)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  width: 50,
                  height: 17,
                  decoration: ShapeDecoration(
                    color: Color(0x99474545),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/camera_icon.png",
                        height: 12,
                        width: 12,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Live',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                  margin: EdgeInsets.only(top: 10, right: 10),
                  decoration: ShapeDecoration(
                    color: Color(0x99474545),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/circles.png",
                        height: 12,
                        width: 12,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${widget.earned_coins} k',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.hostName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/flag_icon.png",
                        height: 15,
                        width: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
                        decoration: ShapeDecoration(
                          color: Color(0xFF00D1FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            widget.level,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Lexend',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.language,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
