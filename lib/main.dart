import 'package:flutter/material.dart';
import 'package:online5_modul_lesson2_login_ui/pages/home_page.dart';
import 'package:online5_modul_lesson2_login_ui/pages/login_page.dart';
import 'package:online5_modul_lesson2_login_ui/pages/signup_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      routes: {
        HomePage.id:(context)=>HomePage(),
        LoginPage.id:(context)=>LoginPage(),
        SignUpPage.id:(context)=>SignUpPage()
      },
    );
  }
}

