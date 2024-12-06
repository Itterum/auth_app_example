import 'package:crud_flutter_example/core/presentation/base_button_widget.dart';
import 'package:flutter/material.dart';

class SignInButtonWidget extends StatelessWidget {
  const SignInButtonWidget({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BaseButtonWidget(
      label: 'Sign In',
      isElevated: true,
      onPressed: () {
        if (formKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Processing Data')),
          );
        }
      },
    );
  }
}
