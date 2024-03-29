import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorage {
  static Future<bool> setString(String key, Object value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(key, value.toString());
  }

  static Future<String?> getString(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  static Future<bool> remove(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }

  static Future<bool> setInt(String key, int value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(key, value);
  }

  static Future<int?> getInt(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  static Future<bool> setBool(String key, bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool(key, value);
  }

  static Future<bool?> getBool(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

  static Future<bool> removeInt(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }

  // /// Reads the data stored in secure storage
  // static Future<String?> secureRead(String key) async {
  //   const FlutterSecureStorage fss = FlutterSecureStorage();
  //   final result = await fss.read(key: key);
  //   return result;
  // }

  // /// Write the data in secure storage
  // static Future<void> secureWrite(String key, String value) async {
  //   const FlutterSecureStorage fss = FlutterSecureStorage();
  //   await fss.write(key: key, value: value);
  // }

  // /// Remove the data in secure storage
  // static Future<void> secureRemove(String key) async {
  //   const FlutterSecureStorage fss = FlutterSecureStorage();
  //   await fss.delete(key: key);
  // }
}
