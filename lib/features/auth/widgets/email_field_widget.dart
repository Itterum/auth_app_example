import 'package:flutter/material.dart';

class EmailFieldWidget extends StatelessWidget {
  const EmailFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        labelText: 'Email',
        prefixIcon: Icon(
          Icons.email,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }

        const emailRegex = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';

        if (!RegExp(emailRegex).hasMatch(value)) {
          return 'Please enter a valid email address';
        }

        return null;
      },
    );
  }
}
