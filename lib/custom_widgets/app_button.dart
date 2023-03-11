import 'package:flutter/material.dart';

import 'green_gradient_container.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text, required this.onTap});
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GreenGradientContainer(
      onTap: onTap,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
