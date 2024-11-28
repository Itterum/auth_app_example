import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpButtonWidget extends StatelessWidget {
  const SignUpButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.go('/sign-up'),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          'Sign Up',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
