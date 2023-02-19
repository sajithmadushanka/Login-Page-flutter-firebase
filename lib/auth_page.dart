import 'package:firebase/Pages/homepage.dart';
import 'package:firebase/Pages/registerpage.dart';
import 'package:flutter/material.dart';

class MyAuth extends StatefulWidget {
  const MyAuth({super.key});

  @override
  State<MyAuth> createState() => _MyAuthState();
}

class _MyAuthState extends State<MyAuth> {
  bool showloginPage = true;
  void toggleScrean() {
    setState(() {
      showloginPage = !showloginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showloginPage) {
      return MyHomePage(showRegisterPage: toggleScrean);
    } else {
      return RegisterPage(showlogingPage: toggleScrean);
    }
  }
}
