import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;
  final bool isBackButton;
  final Color? backgroundColor;

  CustomAppBar(
      {required this.title,
      this.actions = const [],
      this.isBackButton = true,
      this.backgroundColor});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor == null ? Colors.white : backgroundColor,
      leading: isBackButton
          ? IconButton(
              icon: Image.asset(
                "assets/icons/back_arrow.png",
                height: 35,
              ),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : null,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: actions,
    );
  }
}
