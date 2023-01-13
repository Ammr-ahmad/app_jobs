import 'package:final_project_job2023/api/api_key.dart';
import 'package:final_project_job2023/model/jobseekers_api/model_jobseekers.dart';
import 'package:flutter/cupertino.dart';

class ModelJobList with ChangeNotifier {
  List<ModelJob>? profile;

  ModelJobList({required this.profile});

  ModelJobList.fromJson(Map<String, dynamic> json)
      : assert(json[ApiKey.profile] != null) {
    profile = <ModelJob>[];
    json[ApiKey.profile].forEach((app) {
      profile!.add(ModelJob.fromJson(app));
    });
    notifyListeners();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    if (profile != null) {
      data[ApiKey.profile] = profile!.map((app) => app.toJson()).toList();
    }
    notifyListeners();
    return data;
  }
}
