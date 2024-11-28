import 'package:crud_flutter_example/features/auth/widgets/sign_in_form_widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  SignInPageState createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  final String title = 'Sign In Page';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Container(
        padding: const EdgeInsets.all(48),
        width: double.infinity,
        child: SignInFormWidget(formKey: _formKey),
      ),
    );
  }
}
