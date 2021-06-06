import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return new AppBar(
      title: Text("Resume"),
      elevation: 10,
    );
  }
}
