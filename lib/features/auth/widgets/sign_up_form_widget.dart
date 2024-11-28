import 'package:crud_flutter_example/features/auth/widgets/email_field_widget.dart';
import 'package:crud_flutter_example/features/auth/widgets/form_title_widget.dart';
import 'package:crud_flutter_example/features/auth/widgets/sign_up_button_widget.dart';
import 'package:flutter/material.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FormTitleWidget(title: 'Sign Up'),
          SizedBox(height: 16),
          EmailFieldWidget(),
          SizedBox(height: 16),
          SignUpButtonWidget(),
        ],
      ),
    );
  }
}
