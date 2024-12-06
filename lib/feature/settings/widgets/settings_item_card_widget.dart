import 'package:crud_flutter_example/feature/settings/widgets/theme_dialog_widget.dart';
import 'package:flutter/material.dart';

class SettingGroupItems extends StatelessWidget {
  const SettingGroupItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 28),
            leading: const Icon(Icons.brightness_6, color: Colors.blue),
            title: const Text('Theme'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return const ThemeDialogWidget();
                },
              );
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 28),
            leading: const Icon(Icons.language, color: Colors.green),
            title: const Text('Language'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
