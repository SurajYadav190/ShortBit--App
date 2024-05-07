import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:shortbit/home_page/home_page.dart';

import '../profile_screen/Main_Profile_Screen _page/profile_screen.dart';
import '../shortVedioScreen/bloc/short_video_bloc.dart';
import '../shortVedioScreen/component/reel_service.dart';
import '../shortVedioScreen/shortVedioScreen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // inFun();
  }

  inFun() {

    // ReelService().getVideosFromApI(context: context);

    final getReelsBloc = context.read<ShortVideoBloc>();

    getReelsBloc.add(GetReelsApi(limit: 10, context: context, page: 1));

  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
          return state.currentBottomIndex == 0 ? HomePage() :
          state.currentBottomIndex == 1 ? ShortVedioScreen() :
          state.currentBottomIndex == 2 ? HomePage() : ProfileScreen();
        },
      ),

      bottomNavigationBar:
      BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
          return FlashyTabBar(
            selectedIndex: state.currentBottomIndex,
            showElevation: true,
            animationCurve: Curves.bounceInOut,
            backgroundColor: Color(0xff100F0A),
            onItemSelected: (index) {
              final bottomNavigationBloc = context.read<BottomNavigationBloc>();
              bottomNavigationBloc.add(NavBarTapped(tappedIndex: index));
            },
            items: [
              FlashyTabBarItem(
                  icon: Image.asset(
                    'assets/icons/home.png',
                    height: 25,
                    width: 25,
                    color: Color(0xff6E6D6B),
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w900),
                  ),
                  activeColor: Colors.white),
              FlashyTabBarItem(
                  icon: Image.asset(
                    'assets/icons/live.png',
                    height: 30,
                    width: 30,
                    color: Color(0xff6E6D6B),
                  ),
                  title: Text('Live',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w900)),
                  activeColor: Colors.white),
              FlashyTabBarItem(
                  icon: Image.asset(
                    'assets/icons/likes.png',
                    height: 25,
                    width: 25,
                    color: Color(0xff6E6D6B),
                  ),
                  title: Text('Likes',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w900)),
                  activeColor: Colors.white),
              FlashyTabBarItem(
                  icon: Image.asset(
                    'assets/icons/profile.png',
                    height: 25,
                    width: 25,
                    color: Color(0xff6E6D6B),
                  ),
                  title: Text('Profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w900)),
                  activeColor: Colors.white),
            ],
          );
        },
      ),
      // bottomNavigationBar: Container(
      //   // color: Colors.red,
      //   height: 80,
      //   child: Row(
      //     children: [
      //       Container(
      //         height: 50,
      //         width: screenWidth / 5,
      //         color: Colors.green,
      //       ),
      //       Container(
      //         height: 50,
      //         width: screenWidth / 5,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         height: 50,
      //         width: screenWidth / 5,
      //         color: Colors.yellow,
      //       ),
      //       Container(
      //         height: 50,
      //         width: screenWidth / 5,
      //         color: Colors.blue,
      //       ),
      //       Container(
      //         height: 50,
      //         width: screenWidth / 5,
      //         color: Colors.black,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
