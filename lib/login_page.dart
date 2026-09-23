import 'package:flutter/material.dart';
import 'components/my_textfield.dart'; 
import 'components/my_button.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

  
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Login Page', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Container(margin: const EdgeInsets.all(20), child: MyTextfield(myhint: 'Email', txtcontroller: emailController, cornerRadius: 8.0, isObscure: false)),
          Container(margin: const EdgeInsets.all(20), child: MyTextfield(myhint: 'Password', txtcontroller: TextEditingController(), cornerRadius: 8.0, isObscure: true)),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(margin: const EdgeInsets.all(20), child: MyButton(buttonText: 'Login', onPressed: (){}, cornerRadius: 8.0, buttonColor: Colors.blue)),
              Container(margin: const EdgeInsets.all(20), child: MyButton(buttonText: 'Register', onPressed: (){}, cornerRadius: 8.0, buttonColor: Colors.green)),
            ],
          ),
        ],
      ),
    );
  }
}
