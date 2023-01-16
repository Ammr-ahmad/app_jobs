import 'package:final_project_job2023/components/appbar/appbar_main.dart';
import 'package:final_project_job2023/pages/notifications_body/card_notifications.dart';
import 'package:flutter/material.dart';

class BodyNotifications extends StatefulWidget {
  const BodyNotifications({Key? key}) : super(key: key);

  @override
  State<BodyNotifications> createState() => _BodyNotificationsState();
}

class _BodyNotificationsState extends State<BodyNotifications> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarMain(),
      body: CardNotifications(),
    );
  }
}
