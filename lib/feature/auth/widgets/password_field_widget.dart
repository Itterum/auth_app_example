import 'package:crud_flutter_example/core/presentation/base_input_widget.dart';
import 'package:flutter/material.dart';

class PasswordFieldWidget extends StatefulWidget {
  const PasswordFieldWidget({super.key});

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return BaseInputFieldWidget(
      labelText: 'Password',
      prefixIcon: Icon(
        Icons.lock_outline,
        color: Theme.of(context).colorScheme.primary,
      ),
      suffixIcon: IconButton(
        icon: Icon(
          _obscureText ? Icons.visibility : Icons.visibility_off,
          color: Colors.grey,
        ),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      ),
      obscureText: _obscureText,
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
