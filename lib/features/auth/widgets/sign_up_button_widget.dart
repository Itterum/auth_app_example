import 'package:flutter/material.dart';

class SignUpButtonWidget extends StatelessWidget {
  const SignUpButtonWidget({
    super.key,
    required ButtonStyle? style,
    required Function()? onPressed,
  })  : _style = style,
        _onPressed = onPressed;

  final ButtonStyle? _style;
  final Function()? _onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _onPressed,
      style: _style,
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
