  import 'package:flutter/material.dart';

class LoginCLoneTextField extends StatelessWidget {

  final String myhint;
  final TextEditingController txtcontroller;
  final double cornerRadius;
  final bool isObscure;

  const new({
    super.key,
    required this.myhint,
    required this.txtcontroller,
    required this.cornerRadius,
    required this.isObscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtcontroller,
      obscureText: isObscure,
      decoration: InputDecoration(
        hintText: myhint,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(cornerRadius)),
        ),
      ),
    );
  }
}