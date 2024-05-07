import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabbarItem extends StatelessWidget{
  final String text1;

  TabbarItem({super.key, required this.text1});


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return DefaultTabController(

        length: 4, child:
    TabBar(



      tabs: [
        Container(
          height: height*0.050,
          decoration: ShapeDecoration(
            color: Colors.grey.shade400,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
                child: Tab(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text1,style: TextStyle(color: Colors.grey.shade500,fontSize: 18),),
                  ),
                ),
              ),



        ]),
       /* Container(
          width: 100,
          decoration: ShapeDecoration(

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child:
          Tab(
            child: Text(text1,style: TextStyle(color: Colors.white,fontSize: 18),),
          ),



        ),
        Container(
          width: 100,
          decoration: ShapeDecoration(

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child:
          Tab(
            child: Text(text1,style: TextStyle(color: Colors.white,fontSize: 18),),
          ),



        ),
        Container(
          width: 100,
          decoration: ShapeDecoration(

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child:
          Tab(
            child: Text(text1,style: TextStyle(color: Colors.white,fontSize: 18),),
          ),*/




    );

  }}