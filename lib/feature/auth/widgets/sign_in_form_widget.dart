import 'package:crud_flutter_example/core/presentation/base_form_widget.dart';
import 'package:crud_flutter_example/feature/auth/widgets/email_field_widget.dart';
import 'package:crud_flutter_example/feature/auth/widgets/password_field_widget.dart';
import 'package:crud_flutter_example/feature/auth/widgets/sign_in_button_widget.dart';
import 'package:crud_flutter_example/feature/auth/widgets/sign_up_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInFormWidget extends StatelessWidget {
  const SignInFormWidget({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BaseFormWidget(
      title: 'Sign In',
      formKey: formKey,
      fields: const [
        EmailFieldWidget(),
        PasswordFieldWidget(),
      ],
      actions: [
        SignInButtonWidget(formKey: formKey),
        SignUpButtonWidget(
          onPressed: () => context.go('/sign-up'),
        ),
      ],
    );
  }
}
