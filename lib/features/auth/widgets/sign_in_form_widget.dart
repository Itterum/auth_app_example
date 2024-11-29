import 'package:crud_flutter_example/features/auth/widgets/email_field_widget.dart';
import 'package:crud_flutter_example/features/auth/widgets/form_title_widget.dart';
import 'package:crud_flutter_example/features/auth/widgets/password_field_widget.dart';
import 'package:crud_flutter_example/features/auth/widgets/sign_in_button_widget.dart';
import 'package:crud_flutter_example/features/auth/widgets/sign_up_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInFormWidget extends StatelessWidget {
  const SignInFormWidget({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const FormTitleWidget(title: 'Sign In'),
          const SizedBox(height: 16),
          const EmailFieldWidget(),
          const SizedBox(height: 16),
          const PasswordFieldWidget(),
          const SizedBox(height: 16),
          SignInButtonWidget(formKey: _formKey),
          SignUpButtonWidget(
            onPressed: () => context.go('/sign-up'),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
