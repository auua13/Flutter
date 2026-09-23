import 'package:flutter/material.dart';
import '../components/loginclone_image1.dart';
import '../components/loginclone_textfield.dart';
import '../components/loginclone_button.dart';

class LoginCloneFix extends StatelessWidget {
  const LoginCloneFix({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LoginCloneImage1( imagePath: 'assets/line.webp',width: 300,height: 120,fit: BoxFit.contain),

              Container(margin: const EdgeInsets.only(top: 16.0),child: LoginCLoneTextField(myhint: 'Email Address',cornerRadius: 2.0,txtcontroller: emailController,isObscure: false,)),

              Container(child: LoginCLoneTextField(myhint: 'Password',isObscure: true,cornerRadius: 2.0,txtcontroller: passwordController,)),

              Container(margin: const EdgeInsets.only(top: 16.0),child: LoginCloneButton(buttonText: 'Log in',onPressed: () {},cornerRadius: 5.0,buttonColor: Colors.grey, size: const Size(double.infinity, 50.0),)),
            ],
          ),
        ),
      ),
    );
  }
}