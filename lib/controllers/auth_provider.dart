import 'dart:convert';
import 'package:final_project_job2023/api/api_main_pages.dart';
import 'package:flutter/cupertino.dart';
import '../pages/prefrences/app_pref.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAuth = false;
  get getIsAuthStatus => _isAuth;

  changeAuthStatus() {
    _isAuth = !_isAuth;
    notifyListeners();
  }

  var authHeaders = {
    'Content-type': 'application/json; charset=UTF-8',
  };

  loginApi({required String email, required String password}) async {
    changeAuthStatus();

    var body = {"email": email, "password": password};

    var data = await serviceCall.serviceCall(
        url: "auth/login",
        methodType: "post",
        headers: authHeaders,
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
