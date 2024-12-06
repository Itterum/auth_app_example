import 'package:flutter/material.dart';

class FormTitleWidget extends StatelessWidget {
  const FormTitleWidget({
    super.key,
    required String title,
  }) : _title = title;

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
