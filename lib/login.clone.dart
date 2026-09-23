import 'package:flutter/material.dart';

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/line.webp',
                width: 300,
                height: 150,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20.0),
              Container(child: const TextField( decoration: InputDecoration( hintStyle: TextStyle(fontWeight: FontWeight.bold),border: OutlineInputBorder(), hintText: 'Email', contentPadding: EdgeInsets.symmetric( horizontal: 16.0, vertical: 14.0,),),)),
              const SizedBox(height: 12.0), // Jarak antar input box

              Container(child: const TextField( obscureText: true,decoration: InputDecoration( hintStyle: TextStyle(fontWeight: FontWeight.bold),border: OutlineInputBorder(), hintText: 'Password', contentPadding: EdgeInsets.symmetric( horizontal: 16.0,vertical: 14.0, ),),)),
              const SizedBox(height: 12.0), // Jarak antar input box

              Container( margin: const EdgeInsets.all(0),child: ElevatedButton( onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 157, 157, 158), fixedSize: Size(1000, 50), shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(8),),), child: Text('Log in',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),),),),
            ],
          ),
        ),
      ),
    );
  }
}
