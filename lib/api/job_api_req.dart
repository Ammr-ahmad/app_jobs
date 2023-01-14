import 'package:final_project_job2023/api/api_main_pages.dart';
import 'package:final_project_job2023/pages/prefrences/app_pref.dart';
import 'package:flutter/material.dart';
import '../model/model_jobs_seekers/model_jobs_data.dart';

class JobSeekers extends ChangeNotifier {
  List<JobSeekersData> jobseekersdata = [];
  List<JobSeekersData> get getJobList => jobseekersdata;

  var headers = {
    'Content-type': 'application/json; charset=UTF-8',
    "Authorization": "${ApplicationPrefrencesData.token}"
  };
  getPostFromApi() async {
    var response = await serviceCall.serviceCall(
        url: "posts", methodType: "get", headers: headers);

    if (response != null) {
      if (response != "wrong data") {
        for (var jobseekers in response) {
          jobseekersdata.add(jobseekers.fromJson(jobseekers));
        }
        return jobseekersdata;
      }
      return [];
    }
    return [];
  }
}
