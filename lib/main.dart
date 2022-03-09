import 'package:elssa/pages/homepage.dart';
import 'package:elssa/pages/Signup.dart';
import 'package:elssa/pages/login.dart';
import 'package:elssa/pages/otp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
    routes: {
           "/": (context) => Signup(),
           "/home": (context) => HomePage(),
           "/login": (context) => Login(),
            "/otp": (context) => OTP(),
           
           
           
      },
    
    );
  }
}
