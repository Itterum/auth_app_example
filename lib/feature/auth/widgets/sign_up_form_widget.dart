import 'package:crud_flutter_example/core/presentation/base_form_widget.dart';
import 'package:crud_flutter_example/feature/auth/widgets/email_field_widget.dart';
import 'package:crud_flutter_example/feature/auth/widgets/password_field_widget.dart';
import 'package:crud_flutter_example/feature/auth/widgets/sign_up_button_widget.dart';
import 'package:flutter/material.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BaseFormWidget(
      title: 'Sign Up',
      formKey: formKey,
      fields: const [
        EmailFieldWidget(),
        PasswordFieldWidget(),
      ],
      actions: [
        SignUpButtonWidget(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Data')),
              );
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ],
    );
  }
}
