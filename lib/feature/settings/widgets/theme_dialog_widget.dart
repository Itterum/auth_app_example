import 'package:crud_flutter_example/app/theme.dart';
import 'package:flutter/material.dart';

class ThemeDialogWidget extends StatelessWidget {
  const ThemeDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: AppThemeSettings.themeNotifier,
      builder: (context, currentTheme, _) {
        return AlertDialog(
          title: const Text('Choose Theme'),
          actions: <Widget>[
            ListTile(
              title: const Text('Light'),
              leading: Radio<ThemeMode>(
                value: ThemeMode.light,
                groupValue: currentTheme,
                onChanged: (value) {
                  AppThemeSettings.themeNotifier.value = value!;
                  AppThemeSettings.saveTheme(value);
                },
              ),
            ),
            ListTile(
              title: const Text('Dark'),
              leading: Radio<ThemeMode>(
                value: ThemeMode.dark,
                groupValue: currentTheme,
                onChanged: (value) {
                  AppThemeSettings.themeNotifier.value = value!;
                  AppThemeSettings.saveTheme(value);
                },
              ),
            ),
            ListTile(
              title: const Text('System Default'),
              leading: Radio<ThemeMode>(
                value: ThemeMode.system,
                groupValue: currentTheme,
                onChanged: (value) {
                  AppThemeSettings.themeNotifier.value = value!;
                  AppThemeSettings.saveTheme(value);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
