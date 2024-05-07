import 'package:flutter/cupertino.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:shortbit/utils/styles.dart';

class CustomBounce extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const CustomBounce({super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Bounce(child: child, duration: bounceduration, onPressed: onPressed);
  }
}
