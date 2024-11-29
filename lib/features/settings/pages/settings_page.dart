import 'package:crud_flutter_example/features/settings/widgets/profile_card_widget.dart';
import 'package:crud_flutter_example/features/settings/widgets/settings_item_card_widget.dart';
import 'package:crud_flutter_example/features/settings/widgets/sign_out_button_widget.dart';
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
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          SizedBox(height: 16),
          ProfileCardWidget(),
          SizedBox(height: 16),
          SettingGroupItems(),
          SizedBox(height: 16),
          SignOutButtonWidget(),
        ],
      ),
    );
  }
}
