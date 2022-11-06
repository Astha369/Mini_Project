import 'package:flutter/material.dart';
import 'package:mini_project/dashboard/dashboard.dart';
import 'package:mini_project/getting%20started/splash.dart';
import 'signup-login/signup.dart';
import 'signup-login/login.dart';
import 'package:mini_project/dashboard/dashboard.dart';
import 'getting started/introslides.dart';

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
      home: dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}



