import 'package:crud_flutter_example/core/presentation/base_button_widget.dart';
import 'package:flutter/material.dart';

class SignUpButtonWidget extends StatelessWidget {
  const SignUpButtonWidget({
    super.key,
    required this.onPressed,
    this.style,
  });

  final Function()? onPressed;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return BaseButtonWidget(
      label: 'Sign Up',
      isElevated: false,
      onPressed: onPressed,
      style: style,
    );
  }
}
