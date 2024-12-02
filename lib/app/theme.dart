import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppThemeSettings {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.system);
  static const _keyTheme = 'theme_mode';

  static Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final themeString = prefs.getString(_keyTheme);

    switch (themeString) {
      case 'ThemeMode.light':
        themeNotifier.value = ThemeMode.light;
        break;
      case 'ThemeMode.dark':
        themeNotifier.value = ThemeMode.dark;
        break;
      case 'ThemeMode.system':
      default:
        themeNotifier.value = ThemeMode.system;
    }
  }

  static Future<void> saveTheme(ThemeMode themeMode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyTheme, themeMode.toString());
  }

  static void toggleTheme() {
    final currentTheme = themeNotifier.value;

    if (currentTheme == ThemeMode.light) {
      themeNotifier.value = ThemeMode.dark;
    } else if (currentTheme == ThemeMode.dark) {
      themeNotifier.value = ThemeMode.light;
    } else {
      themeNotifier.value = ThemeMode.system;
    }

    saveTheme(themeNotifier.value);
  }
}
