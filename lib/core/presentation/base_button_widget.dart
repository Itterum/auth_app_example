import 'package:flutter/material.dart';

class BaseButtonWidget extends StatelessWidget {
  const BaseButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
    this.style,
    this.isElevated = false,
  });

  final String label;
  final Function()? onPressed;
  final ButtonStyle? style;
  final bool isElevated;

  @override
  Widget build(BuildContext context) {
    final buttonChild = SizedBox(
      width: double.infinity,
      child: Text(
        label,
        textAlign: TextAlign.center,
      ),
    );

    if (isElevated) {
      return ElevatedButton(
        onPressed: onPressed,
        style: style ??
            ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
        child: buttonChild,
      );
    } else {
      return TextButton(
        onPressed: onPressed,
        style: style ??
            ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
        child: buttonChild,
      );
    }
  }
}
