import 'package:flutter/material.dart';

class PasswordFieldWidget extends StatelessWidget {
  const PasswordFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        labelText: 'Password',
        prefixIcon: Icon(
          Icons.lock,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        if (value.length < 6) {
          return 'Password must be at least 6 characters long';
        }
        return null;
      },
    );
  }
}
