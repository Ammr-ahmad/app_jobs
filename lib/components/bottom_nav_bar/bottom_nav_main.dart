import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:final_project_job2023/pages/company_body/body_company.dart';
import 'package:final_project_job2023/pages/jobseekers_body/body_jobseekers_own.dart';
import 'package:flutter/material.dart';

import '../../pages/notifications_body/body_notifications.dart';

class BottomNavigationBarPages extends StatefulWidget {
  static const routeName = 'PagesMain';
  const BottomNavigationBarPages({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPages> createState() =>
      _BottomNavigationBarPagesState();
}

class _BottomNavigationBarPagesState extends State<BottomNavigationBarPages> {
  int selectedPage = 0;
  final pageOptions = [
    const BodyCompany(),
    const BodyNotifications(),
    const BodyOwn(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageOptions[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(title: 'Companies', icon: Icons.home_work),
          TabItem(title: 'Notification', icon: Icons.notifications),
          TabItem(title: 'profile', icon: Icons.person),
        ],
        height: 67,
        initialActiveIndex: selectedPage,
        elevation: 0.0,
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
    );
  }
}
