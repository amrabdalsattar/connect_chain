import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  SharedPreferencesHelper._();

  static late SharedPreferences _prefs;
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  /// Remove a value from the SharedPreferences with given [key]
  static removeData(String key) async {
    await _prefs.remove(key);
  }

  /// Clear all data from the SharedPreferences
  static clearDataAll() async {
    await _prefs.clear();
  }

  /// Saves a [value] to the SharedPreferences with given [key]
  static Future<void> setData(String key, value) async {
    if (value is String) {
      await _prefs.setString(key, value);
    } else if (value is int) {
      await _prefs.setInt(key, value);
    } else if (value is double) {
      await _prefs.setDouble(key, value);
    } else if (value is bool) {
      await _prefs.setBool(key, value);
    } else {
      return;
    }
  }

  /// Retrieves a boolean value from the SharedPreferences with given [key]
  static getBool(String key) {
    return _prefs.getBool(key) ?? false;
  }

  /// Retrieves a double value from the SharedPreferences with given [key]
  static getDouble(String key) {
    return _prefs.getDouble(key) ?? 0.0;
  }

  /// Retrieves an integer value from the SharedPreferences with given [key]
  static getInt(String key) {
    return _prefs.getInt(key) ?? 0;
  }

  /// Retrieves a string value from the SharedPreferences with given [key]
  static getString(String key) {
    return _prefs.getString(key) ?? '';
  }
}
