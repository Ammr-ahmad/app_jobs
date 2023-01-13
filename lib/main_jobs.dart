import 'package:final_project_job2023/components/appbar/appbar_main.dart';
import 'package:final_project_job2023/components/bottom_navbar/bottom_nav_main.dart';
import 'package:final_project_job2023/components/drawer/drawer_app.dart';
import 'package:flutter/material.dart';

class MyRunApp extends StatefulWidget {
  static const routeName = 'RunApp';
  const MyRunApp({super.key});

  @override
  State<MyRunApp> createState() => _MyRunAppState();
}

class _MyRunAppState extends State<MyRunApp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarMain(),
      drawer: AppDrawer(),
      body: BottomNavigationBarPages(),
    );
  }
}
