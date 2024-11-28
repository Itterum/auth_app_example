import 'package:crud_flutter_example/features/auth/widgets/sign_up_form_widget.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_title),
      ),
      body: Container(
        padding: const EdgeInsets.all(48),
        width: double.infinity,
        child: SignUpFormWidget(formKey: _formKey),
      ),
    );
  }
}
