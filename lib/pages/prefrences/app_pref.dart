import 'helper_cash.dart';

class ApplicationPrefrencesData {
  static String? token;

  static storeUserDataIntoShared(
      {required String email,
      required String password,
      required String token}) {
    HelperSave.prefs!.setString("token", token);
    HelperSave.prefs!.setString("email", email);
    HelperSave.prefs!.setString("pass", password);
  }

  static getUserDataFromShared() {
    token = HelperSave.prefs!.getString("token");
  }
}
