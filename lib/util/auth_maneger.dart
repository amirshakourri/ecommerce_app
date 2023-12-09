import 'package:ecommerce_app/di/di.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthManager {
  static final ValueNotifier<String?> authChangeNotifier = ValueNotifier(null);
  static final SharedPreferences _sharedPref = locator.get();

  static void saveToken(String token) async {
    _sharedPref.setString('acess_token', token);
    authChangeNotifier.value = token;
  }

  static String? readAuth() {
    return _sharedPref.getString('acess_token');
  }

  static void logOut() {
    _sharedPref.clear();
    authChangeNotifier.value = null;
  }

  static bool isLoggedIn() {
    String token = readAuth()!;
    return token.isNotEmpty;
  }
}
