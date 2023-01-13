import 'package:flutter/material.dart';

class AppBarAuth extends StatelessWidget implements PreferredSizeWidget {
  const AppBarAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Pages Authentications ',
        style: TextStyle(
          fontSize: 22,
        ),
      ),
      backgroundColor: Colors.blue,
      elevation: 0.8,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
