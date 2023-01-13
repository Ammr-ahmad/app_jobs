import 'package:final_project_job2023/api/api_data_all.dart';
import 'package:final_project_job2023/model/company_api/model_com_list.dart';
import 'package:final_project_job2023/model/jobseekers_api/model_job_list.dart';
import 'package:final_project_job2023/model/notification_api/model_not_list.dart';
import 'package:flutter/material.dart';

class ControllerApiDataAll extends ChangeNotifier {
  bool loading = false;
  set changeLoading(bool value) {
    loading = value;
    notifyListeners();
  }

  ModelCompanyList? dataCompany;

  /// [fetchDataCompany] set data Company include [dataCompany]
  Future<void> fetchDataCompany(BuildContext context) async {
    changeLoading = (true);
    dataCompany = await Api().getCompany(context);
    changeLoading = (false);
    notifyListeners();
  }

  ModelNotificationList? dataNotifications;

  /// [fetchDataNotification] set data Notification include [dataNotifications]
  Future<void> fetchDataNotification(BuildContext context) async {
    changeLoading = true;
    dataNotifications = await Api().getNotification(context);
    changeLoading = false;
    notifyListeners();
  }

  ModelJobList? dataJobs;

  /// [fetchDataJobSeekers] set data Jobseekers include [dataJobSeekers]
  Future<void> fetchDataJobSeekers(BuildContext context) async {
    changeLoading = true;
    dataJobs = await Api().getJob(context);
    changeLoading = false;
    notifyListeners();
  }
}
