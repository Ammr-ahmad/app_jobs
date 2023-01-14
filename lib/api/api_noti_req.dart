import 'package:final_project_job2023/api/api_main_pages.dart';
import 'package:flutter/material.dart';
import '../model/model_notifications/model_notifications_data.dart';

class NotificationsProvider extends ChangeNotifier {
  List<NotificationsData> notification = [];
  List<NotificationsData> get getNotList => notification;

  var headers = {
    'Content-type': 'application/json; charset=UTF-8',
  };
  getPostFromApi() async {
    var response = await serviceCall.serviceCall(
        url: "posts", methodType: "get", headers: headers);

    if (response != null) {
      if (response != "wrong data") {
        for (var notifications in response) {
          notification.add(notifications.fromJson(notifications));
        }
        return notification;
      }
      return [];
    }
    return [];
  }
}
