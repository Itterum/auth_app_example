import 'package:flutter/material.dart';

class AppThemeSettings {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.system);
}
