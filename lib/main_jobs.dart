import 'package:final_project_job2023/components/appbar/appbar_main.dart';
import 'package:final_project_job2023/components/bottom_nav_bar/bottom_nav_main.dart';
import 'package:final_project_job2023/components/drawer/drawer_app.dart';
import 'package:flutter/material.dart';

class MyRunApp extends StatelessWidget {
  static const routeName = 'RunApp';
  const MyRunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMain(),
      body: BottomNavigationBarPages(),
      drawer: AppDrawer(),
    );
  }
}
