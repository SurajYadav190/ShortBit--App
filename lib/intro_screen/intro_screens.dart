import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/intro_screen/bloc/intro_screen_bloc.dart';
import 'package:shortbit/intro_screen/components/into_bottom_navigation.dart';
import 'package:shortbit/login_screen/logIn_screen.dart';
import 'package:shortbit/utils/app_colors.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';
import 'package:shortbit/utils/custom_widgets/customAppBar.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';

import 'components/intro_data.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '',
        isBackButton: false,
        backgroundColor: introAppBarColor,
        actions: [
          CustomBounce(
            onPressed: () {
              navPushRemove(context: context, action: LoginScreen());
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Skip',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF6000FF),
                  fontSize: 16,
                  fontFamily: 'Segoe UI',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.80,
            child: BlocBuilder<IntroScreenBloc, IntroScreenState>(
              buildWhen: (previous, current) {
                if (previous.pageViewIndex != current.pageViewIndex) {
                  pageViewController.animateToPage(current.pageViewIndex,
                      duration: Duration(milliseconds: 150),
                      curve: Curves.easeIn);
                  return true;
                } else {
                  return false;
                }
              },
              builder: (context, state) {
                return PageView(
                  controller: pageViewController,
                  onPageChanged: (value) {
                    final introScreenBloc = context.read<IntroScreenBloc>();
                    introScreenBloc.add(OnIndexChange(index: value));
                  },
                  children: [
                    IntroData(
                      image: 'assets/images/intro_first_screen.jpg',
                      subTitle:
                          'Porem ipsum dolor sit amet, consectetur ipiscing. Porem ipsum dolor sit amet, consectetur ixzxcpiscing.',
                      title: firstTitle,
                    ),
                    IntroData(
                      image: 'assets/images/intro_second_screen.png',
                      subTitle:
                          'Porem ipsum dolor sit amet, consectetur ipiscing. Porem ipsum dolor sit amet, consectetur ixzxcpiscing.',
                      title: secondTitle,
                    ),
                    IntroData(
                      image: 'assets/images/intro_third_screen.png',
                      subTitle:
                          'Porem ipsum dolor sit amet, consectetur ipiscing. Porem ipsum dolor sit amet, consectetur ixzxcpiscing.',
                      title: thirdTitle,
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BlocBuilder<IntroScreenBloc, IntroScreenState>(
        builder: (context, state) {
          return IntroBottomNativation(
            index: state.pageViewIndex,
            pageViewlength: 3,
          );
        },
      ),
    );
  }

  Widget get firstTitle => Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Connect with Your',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: ' \nIdeal Match',
              style: TextStyle(
                color: Color(0xFF6000FF),
                fontSize: 26,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      );

  Widget get secondTitle => Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Meeting New People',
              style: TextStyle(
                color: Color(0xFF6000FF),
                fontSize: 26,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: ' in \nYour Area',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      );

  Widget get thirdTitle => Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Engage and Connect:',
              style: TextStyle(
                color: Color(0xFF6000FF),
                fontSize: 26,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: ' \nChat and Call',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontFamily: 'Segoe UI',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      );
}
