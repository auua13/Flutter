import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String buttonText;
  final VoidCallback onPressed;
  final double cornerRadius;
  final Color buttonColor;
  
  const MyButton({super.key, required this.buttonText, required this.onPressed, required this.cornerRadius, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cornerRadius),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}