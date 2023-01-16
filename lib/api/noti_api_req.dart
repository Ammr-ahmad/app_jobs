import 'package:final_project_job2023/api/api_main_pages.dart';
import 'package:final_project_job2023/pages/prefrences/app_pref.dart';
import 'package:flutter/material.dart';
import '../models/model_notifications/model_notifications_data.dart';

class NotificationsProvider extends ChangeNotifier {
  List<NotificationsData> notification = [];
  List<NotificationsData> get getNotList => notification;

  var headers = {
    'Content-type': 'application/json; charset=UTF-8',
    "Authorization": "Bearer ${ApplicationPrefrencesData.token}"
  };
  getPostFromApi() async {
    var response = await serviceCall.serviceCall(
        url: "user/pushNotification", methodType: "get", headers: headers);
    // print(response);
    if (response != null) {
      if (response != "wrong data") {
        for (var notifications in response) {
          notification.add(NotificationsData.fromJson(notifications));
        }
        return notification;
      }
      return [];
    }
    return [];
  }
}
