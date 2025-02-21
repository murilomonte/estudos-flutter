import 'package:flutter/material.dart';
import 'package:minimal_music_app/theme/dark_mode.dart';
import 'package:minimal_music_app/theme/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // Initially, Light mode
  ThemeData _themeData = lightMode;

  // is dark mode
  bool get isDarkMode => _themeData == darkMode;

  // Getter
  ThemeData get themeData => _themeData;

  // Setter
  set themeData(ThemeData themeData) {
    _themeData = themeData;

    // update ui
    notifyListeners();
  }

  // toggle theme
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}