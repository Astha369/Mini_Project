import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'introslides.dart';


// ignore: camel_case_types
class splashPage extends StatefulWidget {
  @override
  State<splashPage> createState() => _splashPageState();
}

// ignore: camel_case_types
class _splashPageState extends State<splashPage> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 1),
            ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => OnBoardingPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                color: Colors.transparent,
                height: 200.0,
                width: 200.0,
                child: _buildCircleAvatar(),
              ),
            ),
          ],
        )
    );
  }
  Widget _buildCircleAvatar() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final radius = min(constraints.maxHeight, constraints.maxWidth);
        return Center(
          child: CircleAvatar(
            radius: radius,
            backgroundImage: AssetImage(
              "assets/logo.png",
            ),
          ),
        );
      },
    );
  }
}