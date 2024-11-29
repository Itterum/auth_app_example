import 'package:crud_flutter_example/app/theme.dart';
import 'package:crud_flutter_example/widgets/base_scaffold_widget.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final String _title = 'Settings';

  @override
  Widget build(BuildContext context) {
    return BaseScaffoldWidget(
      title: _title,
      showSettingsButton: false,
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
                setState(() => AppThemeSettings.themeNotifier.value = value!);
              },
            ),
          ),
          ListTile(
            title: const Text('Dark'),
            leading: Radio<ThemeMode>(
              value: ThemeMode.dark,
              groupValue: AppThemeSettings.themeNotifier.value,
              onChanged: (value) {
                setState(() => AppThemeSettings.themeNotifier.value = value!);
              },
            ),
          ),
          ListTile(
            title: const Text('System Default'),
            leading: Radio<ThemeMode>(
              value: ThemeMode.system,
              groupValue: AppThemeSettings.themeNotifier.value,
              onChanged: (value) {
                setState(() => AppThemeSettings.themeNotifier.value = value!);
              },
            ),
          ),
        ],
      ),
    );
  }
}
