import 'package:crud_flutter_example/features/auth/pages/sign_in_page.dart';
import 'package:crud_flutter_example/features/auth/pages/sign_up_page.dart';
import 'package:crud_flutter_example/features/settings/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SignInPage(); // replace with home page route when ready
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'sign-in',
          builder: (BuildContext context, GoRouterState state) {
            return const SignInPage();
          },
        ),
        GoRoute(
          path: 'sign-up',
          builder: (BuildContext context, GoRouterState state) {
            return const SignUpPage();
          },
        ),
        GoRoute(
          path: 'settings',
          builder: (BuildContext context, GoRouterState state) {
            return const SettingsPage();
          },
        ),
      ],
    ),
  ],
);
