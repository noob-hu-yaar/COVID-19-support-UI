import 'package:flutter/material.dart';
import 'package:aesehi/config/palette.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.primaryColor,
      elevation: 0.0,
      leading: IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 28.0, 
          color: Colors.black,
          onPressed: () {},
      ),

      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_none_outlined),
          iconSize: 28.0,
          color: Colors.black,
          onPressed: () {},
        ),
      ],

    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
