import 'dart:convert';

import 'package:final_project_job2023/api/api_main_pages.dart';
import 'package:final_project_job2023/pages/prefrences/app_pref.dart';
import 'package:flutter/cupertino.dart';

class ProviderSignUp extends ChangeNotifier {
  bool _authSignUp = false;
  get getIsAuthStatus => _authSignUp;

  changeAuthStatus() {
    _authSignUp = !_authSignUp;
    notifyListeners();
  }

  var authHeadersSignUp = {
    'Content-type': 'application/json; charset=UTF-8',
  };

  signUp(
      {required String username,
      required String email,
      required String password,
      required String phone,
      required String date}) async {
    changeAuthStatus();

    var body = {
      "username": username,
      "email": email,
      "password": password,
      "phone": phone,
      "date": date
    };

    var data = await serviceCall.serviceCall(
        url: "auth/register",
        methodType: "post",
        headers: authHeadersSignUp,
        body: jsonEncode(body));

    if (data != null) {
      if (data != "wrong data") {
        ApplicationPrefrencesData.storeUserDataIntoShared(
            email: email, password: password, token: data['token']);
        changeAuthStatus();

        return true;
      } else {
        changeAuthStatus();
        return false;
      }
    } else {
      changeAuthStatus();
      return false;
    }
  }
}
