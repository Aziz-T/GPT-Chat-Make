import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      title: Text(title, style: TextStyle(color: Colors.black),),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(0, 60);
}
