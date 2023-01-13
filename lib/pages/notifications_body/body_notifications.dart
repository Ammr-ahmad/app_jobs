import 'package:final_project_job2023/components/appbar/appbar_main.dart';
import 'package:final_project_job2023/controllers/api_controllers.dart';
import 'package:final_project_job2023/model/notification_api/model_notifi.dart';
import 'package:final_project_job2023/pages/notifications_body/card_notifications.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BodyNotifications extends StatefulWidget {
  const BodyNotifications({Key? key}) : super(key: key);

  @override
  State<BodyNotifications> createState() => _BodyNotificationsState();
}

class _BodyNotificationsState extends State<BodyNotifications> {
  @override
  void initState() {
    super.initState();
    final ControllerApiDataAll controllerApidata =
        Provider.of<ControllerApiDataAll>(context, listen: false);
    Future.delayed(Duration.zero, () {
      controllerApidata.fetchDataNotification(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarMain(),
      body: CardNotifications(),
    );
  }
}


// final ControllerApiDataAll controllerApi =
    //     Provider.of<ControllerApiDataAll>(context, listen: false);
    // ModelNotificationList? notification =
    //     controllerApi.dataNotifications?.notification;