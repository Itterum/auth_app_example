import 'package:flutter/material.dart';
import 'package:crud_flutter_example/app/theme.dart';

class ThemeDialogWidget extends StatefulWidget {
  const ThemeDialogWidget({super.key});

  @override
  State<ThemeDialogWidget> createState() => _ThemeDialogWidgetState();
}

class _ThemeDialogWidgetState extends State<ThemeDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Choose Theme'),
      actions: <Widget>[
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
    );
  }
}
