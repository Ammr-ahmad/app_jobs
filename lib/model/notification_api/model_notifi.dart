import 'package:final_project_job2023/api/api_key.dart';
import 'package:flutter/cupertino.dart';

class ModelNotifications with ChangeNotifier {
  String? senderID;
  String? senderName;
  String? title;
  String? body;
  String? location;
  String? link;
  String? interviewStart;
  String? interviewEnd;
  String? position;
  String? type;

  ModelNotifications({
    this.senderID,
    this.senderName,
    this.title,
    this.body,
    this.location,
    required this.link,
    this.interviewStart,
    this.interviewEnd,
    this.position,
    this.type,
  });

  ModelNotifications.fromJson(Map<String, dynamic> json)
      : assert(json.isNotEmpty),
        senderID = json[ApiKey.senderID],
        type = json[ApiKey.type],
        senderName = json[ApiKey.senderName],
        title = json[ApiKey.title],
        body = json[ApiKey.body],
        location = (json[ApiKey.location]),
        link = json[ApiKey.link],
        interviewStart = json[ApiKey.interviewStart],
        interviewEnd = json[ApiKey.interviewEnd],
        position = json[ApiKey.position];
  notifyListeners();

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data[ApiKey.senderID] = senderID;
    data[ApiKey.type] = type;
    data[ApiKey.senderName] = senderName;
    data[ApiKey.title] = title;
    data[ApiKey.body] = body;
    data[ApiKey.location] = location;
    data[ApiKey.link] = link;
    data[ApiKey.interviewStart] = interviewStart;
    data[ApiKey.interviewEnd] = interviewEnd;
    data[ApiKey.position] = position;
    notifyListeners();
    return data;
  }
}
