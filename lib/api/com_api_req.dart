import 'package:final_project_job2023/api/api_main_pages.dart';
import 'package:final_project_job2023/model/model_company/model_com_data.dart';
import 'package:flutter/material.dart';

class CompanyProvider extends ChangeNotifier {
  List<CompanyData> companies = [];
  List<CompanyData> get getComList => companies;

  var headers = {
    'Content-type': 'application/json; charset=UTF-8',
  };
  getPostFromApi() async {
    var response = await serviceCall.serviceCall(
        url: "companies", methodType: "get", headers: headers);

    if (response != null) {
      if (response != "wrong data") {
        for (var company in response) {
          companies.add(company.fromJson(company));
        }
        return companies;
      }
      return [];
    }
    return [];
  }
}
