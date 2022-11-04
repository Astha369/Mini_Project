import 'package:flutter/material.dart';
import 'package:mini_project/getting%20started/splash.dart';
import 'signup-login/signup.dart';
import 'signup-login/login.dart';
import 'getting started/introslides.dart';
import 'dashboard/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Mess',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
      ),
      home: splashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



