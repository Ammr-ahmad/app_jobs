import 'cash_helper.dart';

class AppSignUp {
  static storeUserRegisterShared({
    required String username,
    required String email,
    required String password,
    required String phone,
    required String date,
  }) {
    CachHelper.prefs!.setString("username", username);
    CachHelper.prefs!.setString("email", email);
    CachHelper.prefs!.setString("password", password);
    CachHelper.prefs!.setString("phone", phone);
    CachHelper.prefs!.setString("date", date);
  }
}
