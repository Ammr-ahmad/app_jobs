import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarMain extends StatelessWidget implements PreferredSizeWidget {
  const AppBarMain({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue.shade900,
      title: Text('Jordan Job Seekers ',
          style:
              GoogleFonts.aBeeZee(fontSize: 22, fontWeight: FontWeight.w600)),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
