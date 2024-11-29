import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BaseScaffoldWidget extends StatelessWidget {
  const BaseScaffoldWidget({
    super.key,
    required String title,
    required Widget body,
    bool showSettingsButton = true,
    FloatingActionButton? floatingActionButton,
  })  : _title = title,
        _body = body,
        _showSettingsButton = showSettingsButton,
        _floatingActionButton = floatingActionButton;

  final String _title;
  final Widget _body;
  final bool _showSettingsButton;
  final FloatingActionButton? _floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_title),
        actions: _showSettingsButton
            ? <Widget>[
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () => context.go('/settings'),
                ),
              ]
            : null,
      ),
      body: _body,
      floatingActionButton: _floatingActionButton,
    );
  }
}
