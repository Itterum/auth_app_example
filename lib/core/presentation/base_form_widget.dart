import 'package:flutter/material.dart';

class BaseFormWidget extends StatelessWidget {
  const BaseFormWidget({
    super.key,
    required this.title,
    required this.formKey,
    required this.fields,
    required this.actions,
  });

  final String title;
  final GlobalKey<FormState> formKey;
  final List<Widget> fields;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ...fields.map((field) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: field,
              )),
          ...actions.map((action) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: action,
              )),
        ],
      ),
    );
  }
}
