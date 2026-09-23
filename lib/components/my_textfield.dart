import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextfield extends StatelessWidget {
  // list variabel parameter
  final String myhint;
  final TextEditingController txtcontroller;
  final double cornerRadius;
  final bool isObscure;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  const MyTextfield({
    super.key, 
    required this.myhint, 
    required this.txtcontroller, 
    required this.cornerRadius, 
    required this.isObscure, 
    this.keyboardType, 
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtcontroller, 
      obscureText: isObscure,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        hintText: myhint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(cornerRadius)),
        ),
      ),
    );
  }
}