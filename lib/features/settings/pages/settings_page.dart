import 'package:crud_flutter_example/app/theme.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Choose Theme'),
          ListTile(
            title: const Text('Light'),
            leading: Radio<ThemeMode>(
              value: ThemeMode.light,
              groupValue: AppThemeSettings.themeNotifier.value,
              onChanged: (value) {
                AppThemeSettings.themeNotifier.value = value!;
              },
            ),
          ),
          ListTile(
            title: const Text('Dark'),
            leading: Radio<ThemeMode>(
              value: ThemeMode.dark,
              groupValue: AppThemeSettings.themeNotifier.value,
              onChanged: (value) {
                AppThemeSettings.themeNotifier.value = value!;
              },
            ),
          ),
          ListTile(
            title: const Text('System Default'),
            leading: Radio<ThemeMode>(
              value: ThemeMode.system,
              groupValue: AppThemeSettings.themeNotifier.value,
              onChanged: (value) {
                AppThemeSettings.themeNotifier.value = value!;
              },
            ),
          ),
        ],
      ),
    );
  }
}
