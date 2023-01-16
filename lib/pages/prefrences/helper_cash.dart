import 'package:shared_preferences/shared_preferences.dart';

class HelperSave {
  static SharedPreferences? prefs;
  static init() async {
    prefs = await SharedPreferences.getInstance();
  }
}
