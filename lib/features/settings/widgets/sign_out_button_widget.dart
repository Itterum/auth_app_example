import 'package:flutter/material.dart';

class SignOutButtonWidget extends StatelessWidget {
  const SignOutButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 28),
        leading: const Icon(Icons.logout, color: Colors.red),
        title: const Text(
          'Sign out',
          style: TextStyle(color: Colors.red),
        ),
        onTap: () {},
      ),
    );
  }
}
