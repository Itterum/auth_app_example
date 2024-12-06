import 'package:flutter/material.dart';

class BaseInputFieldWidget extends StatelessWidget {
  const BaseInputFieldWidget({
    super.key,
    required this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.onToggleObscureText,
    this.validator,
    this.keyboardType,
  });

  final String labelText;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  final bool obscureText;
  final VoidCallback? onToggleObscureText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      keyboardType: keyboardType,
    );
  }
}