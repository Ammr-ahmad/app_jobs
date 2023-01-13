import 'package:final_project_job2023/api/api_key.dart';
import 'package:final_project_job2023/model/notification_api/model_notifi.dart';
import 'package:flutter/cupertino.dart';

class ModelNotificationList with ChangeNotifier {
  List<ModelNotifications>? notifications;

  ModelNotificationList({this.notifications});

  ModelNotificationList.fromJson(Map<String, dynamic> json) {
    if (json[ApiKey.notification] != null) {
      notifications = <ModelNotifications>[];
      json[ApiKey.notification].forEach((app) {
        notifications!.add(ModelNotifications.fromJson(app));
      });
      notifyListeners();
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    if (notifications != null) {
      data[ApiKey.notification] =
          notifications!.map((app) => app.toJson()).toList();
    }
    notifyListeners();
    return data;
  }
}
