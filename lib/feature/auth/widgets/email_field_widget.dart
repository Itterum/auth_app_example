import 'package:crud_flutter_example/core/presentation/base_input_widget.dart';
import 'package:flutter/material.dart';

class EmailFieldWidget extends StatelessWidget {
  const EmailFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseInputFieldWidget(
      labelText: 'Email',
      prefixIcon: Icon(
        Icons.email_outlined,
        color: Theme.of(context).colorScheme.primary,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }

        const emailRegex = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\$';

        if (!RegExp(emailRegex).hasMatch(value)) {
          return 'Please enter a valid email address';
        }

        return null;
      },
      keyboardType: TextInputType.emailAddress,
    );
  }
}
