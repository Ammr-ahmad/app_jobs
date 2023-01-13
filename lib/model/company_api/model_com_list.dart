import 'package:final_project_job2023/api/api_key.dart';
import 'package:final_project_job2023/model/company_api/model_comany.dart';
import 'package:flutter/cupertino.dart';

class ModelCompanyList with ChangeNotifier {
  List<ModelCompany>? company;

  ModelCompanyList({this.company});

  ModelCompanyList.fromJson(Map<String, dynamic> json)
      : assert(json[ApiKey.company] != null) {
    company = <ModelCompany>[];
    json[ApiKey.company].forEach((app) {
      company!.add(ModelCompany.fromJson(app));
    });
    notifyListeners();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (company != null) {
      data[ApiKey.company] = company!.map((app) => app.toJson()).toList();
    }
    notifyListeners();
    return data;
  }
}
