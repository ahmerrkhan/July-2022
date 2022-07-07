import 'package:dark_mode/preferences/preferences.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _darkTheme = false;
  ThemePreferences preference = ThemePreferences();

  //getter
  bool get darkTheme => _darkTheme;

  //setter
  set darkTheme(bool value) {
    _darkTheme = value;

    preference.setTheme(value);
    notifyListeners();
  }
}
