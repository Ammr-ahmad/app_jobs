import 'package:final_project_job2023/api/api_main_pages.dart';
import 'package:final_project_job2023/models/model_company/model_com_data.dart';
import 'package:flutter/material.dart';
import '../pages/prefrences/app_pref.dart';

class CompanyProvider extends ChangeNotifier {
  List<CompanyData> companies = [];

  List<CompanyData> get getComList => companies;

  var headers = {
    'Content-type': 'application/json; charset=UTF-8',
    "Authorization": "Bearer ${ApplicationPrefrencesData.token}"
  };

  getPostFromApi() async {
    var response = await serviceCall.serviceCall(
        url: "user/companies", methodType: "get", headers: headers);

    if (response != null) {
      if (response != "wrong data") {
        for (var company in response) {
          companies.add(CompanyData.fromJson(company));
        }
        return companies;
      }
      return [];
    }
    return [];
  }

  // selected company index
  int? _selectedCompanyIndex;
  get getSelectedCompanyIndex => _selectedCompanyIndex;

  changeSelectedCompanyIndex(int index) {
    _selectedCompanyIndex = index;
  }
}
