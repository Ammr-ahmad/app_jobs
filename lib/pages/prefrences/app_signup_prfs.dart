import 'helper_cash.dart';

class AppSignUp {
  static storeUserRegisterShared({
    required String username,
    required String email,
    required String password,
    required String phone,
    required String date,
  }) {
    HelperSave.prefs!.setString("username", username);
    HelperSave.prefs!.setString("email", email);
    HelperSave.prefs!.setString("password", password);
    HelperSave.prefs!.setString("phone", phone);
    HelperSave.prefs!.setString("date", date);
  }
}
