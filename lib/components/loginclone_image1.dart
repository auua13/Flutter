import 'package:flutter/material.dart';

class LoginCloneImage1 extends StatelessWidget {

  final String imagePath;
  final double width;
  final double height;
  final BoxFit fit;

  const LoginCloneImage1({
    super.key,
    required this.imagePath,
    required this.width,
    required this.height,
    required this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: width,
      height: height,
      fit: fit,
    );
  }
}