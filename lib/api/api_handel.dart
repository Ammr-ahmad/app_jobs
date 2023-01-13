import 'package:final_project_job2023/model/company_api/model_com_list.dart';
import 'package:final_project_job2023/model/jobseekers_api/model_job_list.dart';
import 'package:final_project_job2023/model/notification_api/model_not_list.dart';
import 'package:flutter/material.dart';

abstract class ApiHandleAll {
  Future<ModelCompanyList?> getCompany(BuildContext context);

  Future<ModelNotificationList?> getNotification(BuildContext context);

  Future<ModelJobList?> getJob(BuildContext context);
}
