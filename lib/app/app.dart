import 'package:crud_flutter_example/app/router.dart';
import 'package:crud_flutter_example/app/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: AppThemeSettings.themeNotifier,
      builder: (context, themeMode, _) {
        return MaterialApp.router(
          title: 'Auth App',
          theme: ThemeData(
            colorScheme: const ColorScheme.light(
              primary: Colors.blueAccent,
            ),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: const ColorScheme.dark(
              primary: Colors.blueAccent,
            ),
            useMaterial3: true,
          ),
          themeMode: themeMode,
          routerConfig: router,
        );
      },
    );
  }
}
