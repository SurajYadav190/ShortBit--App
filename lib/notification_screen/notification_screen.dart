import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child:

        Column(children: [
          Stack(
            children: [

              purpleBackground(),

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  children: [
                    headingSection(),
                    SizedBox(
                      height: 10,
                    ),
                   ],
                ),
              )
            ],
          ),

           Expanded(
            child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) {
              return

                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 15,bottom: 10),
                    child: Text("TODAY",style: TextStyle(fontSize: 16,wordSpacing: 2,),),
                  ),

                  todayListing(context),



                ],);

            },),
          )

        ],)
      ),

    );
  }

  Widget purpleBackground(){
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      appPurpleGradient2Color,
                      appPurpleGradient1Color,
                    ],
                  )),
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.white,
            )
          ],
        ),
        Container(
          height: 15,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20))),
          width: double.infinity,
        ),
      ],
    );
  }

  Widget headingSection() {
    return Row(
      children: [
        Container(
            decoration:
            BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            )),
        SizedBox(
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Notifications',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Sk-Modernist',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }


  Widget customRowDesign(BuildContext context){
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: Column(
        children: [

          Row(children: [
            Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: notificationGreyColor

                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Icon(Icons.thumb_up_off_alt_sharp,size:20,color: Colors.white,),
                )),


            SizedBox(width: 20,),


            Container(
              width: width*0.65,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sofia, John and +19 others liked your post.',
                    style: TextStyle(
                      color: Color(0xFF4D4D4D),
                      fontSize: 14,
                      fontFamily: 'Segoe UI',
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  Text(
                    '10 min ago',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 14,

                      fontFamily: 'Segoe UI',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],),
            )

          ],),

          SizedBox(height: 15,),

          Divider(color: Colors.grey.shade200,height: 1,)



        ],
      ),
    );
  }
  
  Widget todayListing(BuildContext context){
    return   ListView.builder(
      physics: NeverScrollableScrollPhysics(),
       shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {

        return   Padding(
          padding: const EdgeInsets.only(top: 5,bottom: 5),
          child: customRowDesign(context),
        );

      },);

  }


}
