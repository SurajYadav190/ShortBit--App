import 'package:flutter/material.dart';

import '../../utils/common_methods/navigation_method.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height*0.08,

        leading: Padding(
          padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
          child: Container(
              width: width*0.2,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(width: 1, color: Color(0xFFBFBFBF)),
                ),),
              child: InkWell(
                  onTap: (){
                    navPop(context: context);
                  },
                  child: Icon(Icons.arrow_back))),
        ),
        leadingWidth: 80,
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text("About Us",style: TextStyle(fontWeight: FontWeight.w600),),
        ),
        centerTitle: true,


      ),

    );
  }
}
