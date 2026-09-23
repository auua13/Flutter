import 'package:flutter/material.dart';

class LoginCloneButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double cornerRadius;
  final Color buttonColor;
  final Size size;

  const LoginCloneButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.cornerRadius,
    required this.buttonColor,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: size,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cornerRadius),
        ),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
