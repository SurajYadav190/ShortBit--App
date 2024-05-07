import 'package:flutter/cupertino.dart';

class TabBarContainer extends StatelessWidget{
  final String text;
  TabBarContainer({super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(text,style: TextStyle(
                color: Color(0xFF41297C),
                fontSize: 14,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w600,
                height: 0.06,
                letterSpacing: -0.24,
              ),),
            ),
            Image.asset("assets/icon/Mask Icon2.png",width:width*0.08),
          ],
        ),


      ],
    );
 
  }}