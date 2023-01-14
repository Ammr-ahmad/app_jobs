import 'cash_helper.dart';

class ApplicationPrefrencesData {
  static String? token;

  static storeUserDataIntoShared(
      {required String email,
      required String password,
      required String token}) {
    CachHelper.prefs!.setString("token", token);
    CachHelper.prefs!.setString("email", email);
    CachHelper.prefs!.setString("pass", password);
  }

  static getUserDataFromShared() {
    token = CachHelper.prefs!.getString("token");
  }
}
