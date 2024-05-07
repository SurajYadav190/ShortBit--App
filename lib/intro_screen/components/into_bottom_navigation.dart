import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/intro_screen/bloc/intro_screen_bloc.dart';
import 'package:shortbit/login_screen/logIn_screen.dart';
import 'package:shortbit/utils/app_colors.dart';
import 'package:shortbit/utils/common_methods/navigation_method.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';

class IntroBottomNativation extends StatelessWidget {
  final int index;
  final int pageViewlength;

  const IntroBottomNativation(
      {super.key, required this.index, required this.pageViewlength});

  @override
  Widget build(BuildContext context) {
    final introScreenBloc = context.read<IntroScreenBloc>();
    return Container(
      height: 70,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          introScreenBloc.state.pageViewIndex == 0
              ? SizedBox(
                  width: 45,
                )
              : CustomBounce(
                  onPressed: () {
                    if (introScreenBloc.state.pageViewIndex > 0) {
                      introScreenBloc.add(OnIndexChange(
                          index: (introScreenBloc.state.pageViewIndex - 1)));
                    }

                    // introScreenBloc.add(OnIndexChange(index: value));
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: ShapeDecoration(
                      shape: OvalBorder(
                        side: BorderSide(width: 1, color: primaryBlueColor),
                      ),
                    ),
                    child: Icon(Icons.arrow_back_rounded,
                        color: primaryBlueColor, weight: 35),
                  ),
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                pageViewlength,
                (currentIndex) => Container(
                      width: index == currentIndex ? 10 : 8,
                      height: index == currentIndex ? 10 : 8,
                      margin: EdgeInsets.all(2),
                      decoration: ShapeDecoration(
                        color: index == currentIndex
                            ? Color(0xFF6000FF)
                            : Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    )),
          ),
          CustomBounce(
            onPressed: () {
              if (introScreenBloc.state.pageViewIndex < 2) {
                introScreenBloc.add(OnIndexChange(
                    index: (introScreenBloc.state.pageViewIndex + 1)));
              } else {
                navPushRemove(context: context, action: LoginScreen());
              }
            },
            child: Container(
              width: 45,
              height: 45,
              decoration: ShapeDecoration(
                color: Color(0xFF6000FF),
                shape: OvalBorder(),
              ),
              child: Icon(Icons.arrow_forward_rounded,
                  color: Colors.white, weight: 35),
            ),
          )
        ],
      ),
    );
  }
}
