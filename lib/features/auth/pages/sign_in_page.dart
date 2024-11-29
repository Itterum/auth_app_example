import 'package:crud_flutter_example/features/auth/widgets/sign_in_form_widget.dart';
import 'package:crud_flutter_example/widgets/base_scaffold_widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  SignInPageState createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  final String _title = 'Sign In Page';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BaseScaffoldWidget(
      title: _title,
      body: Container(
        padding: const EdgeInsets.all(48),
        width: double.infinity,
        child: SignInFormWidget(formKey: _formKey),
      ),
    );
  }
}
