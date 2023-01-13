import 'dart:convert' as convert;
import 'dart:io';
import 'package:final_project_job2023/api/api_handel.dart';
import 'package:final_project_job2023/api/api_key.dart';
import 'package:final_project_job2023/model/company_api/model_com_list.dart';
import 'package:final_project_job2023/model/jobseekers_api/model_job_list.dart';
import 'package:final_project_job2023/model/notification_api/model_not_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api extends ApiHandleAll {
  final int timeOut = 100;
  List<ModelCompanyList> searchListCom = [];

  @override
  Future<ModelCompanyList?> getCompany(BuildContext context) async {
    try {
      Uri url = Uri.parse('${ApiKey.baseApi}${ApiKey.apiCompany}');
      http.Response res =
          await http.get(url).timeout(Duration(seconds: timeOut));
      ModelCompanyList dataModel;
      if (res.statusCode == 200) {
        Map<String, dynamic> json = convert.jsonDecode(res.body);
        dataModel = ModelCompanyList.fromJson(json);
      } else {
        return null;
      }
      return dataModel;
    } catch (error) {
      print('Erorr Connections');
    }
    return null;
  }

  @override
  Future<ModelJobList?> getJob(BuildContext context) async {
    try {
      Uri url = Uri.parse('${ApiKey.baseApi}${ApiKey.apiProfile}');

      http.Response res =
          await http.get(url).timeout(Duration(seconds: timeOut));

      ModelJobList? dataModel;
      if (res.statusCode == 200) {
        Map<String, dynamic> json = convert.jsonDecode(res.body);
        dataModel = ModelJobList.fromJson(json);
      } else {
        dataModel = null;
      }
      return dataModel;
    } catch (error) {
      print('Notification Error');
    }
    return null;
  }

  @override
  Future<ModelNotificationList?> getNotification(BuildContext context) async {
    try {
      Uri url = Uri.parse('${ApiKey.baseApi}${ApiKey.apiNotification}');

      http.Response res =
          await http.get(url).timeout(Duration(seconds: timeOut));

      ModelNotificationList? dataModel;
      if (res.statusCode == 200) {
        Map<String, dynamic> json = convert.jsonDecode(res.body);
        dataModel = ModelNotificationList.fromJson(json);
      } else {
        dataModel = null;
      }
      return dataModel;
    } catch (error) {
      print('Notification Error');
    }
    return null;
  }
}
