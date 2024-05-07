import 'package:flutter/material.dart';

import '../utils/common_methods/navigation_method.dart';
import '../utils/custom_widgets/custom_bounce.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List<String> lists = [
    'assets/images/g_one.png',
    'assets/images/g_two.png',
    'assets/images/girl_full_img.png',
    'assets/images/g_two.png',
    'assets/images/g_one.png',
    'assets/images/girl_full_img.png',
    'assets/images/g_one.png',
    'assets/images/g_two.png',
    'assets/images/girl_full_img.png'
  ];

  String img = "assets/images/girl_full_img.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 1,
            margin: EdgeInsets.only(top: 30),
            child: Image.asset(
              img,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 50,
            left: 15,
            child: CustomBounce(
              onPressed: () {
                navPop(context: context);
              },
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                backgroundImage:
                    AssetImage("assets/images/circular_back_btn.png"),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 10,
            right: 10,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: ListView.builder(
                  itemCount: lists.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomBounce(
                      onPressed: () {
                        img = lists[index];
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 3, top: 5, right: 3, bottom: 5),
                        child: Container(
                          width: 60,
                          child: Image.asset(lists[index], fit: BoxFit.fill),
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
