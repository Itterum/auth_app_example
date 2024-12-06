import 'package:crud_flutter_example/core/presentation/base_scaffold_widget.dart';
import 'package:crud_flutter_example/feature/auth/widgets/sign_up_form_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  final String _title = 'Sign Up Page';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BaseScaffoldWidget(
      title: _title,
      body: Container(
        padding: const EdgeInsets.all(48),
        width: double.infinity,
        child: SignUpFormWidget(formKey: _formKey),
      ),
    );
  }
}
