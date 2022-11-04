import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';
import 'package:mini_project/signup-login/signup.dart';
import 'package:mini_project/signup-login/login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:mini_project/scanner/scanner.dart';




class dashboard extends StatefulWidget {
  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery
        .of(context)
        .size
        .height;
    double wd = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
      appBar: AppBar(
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 6.0, right: 25),
            child: CircleAvatar(
              radius: 40.0,
              backgroundImage:
              AssetImage("assets/profile.jpg"),
            ),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 8),
          child: const Text("Hey, \nJohn", style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 28
          ),),
        ),
        // centerTitle: true,
        backgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Text(
                "string",
              ),
            ),
            SizedBox(height: 20,),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text("Mess",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                ),
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                width: double.infinity,
                height: 100,
                child: GridView.count(crossAxisCount: 1,scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  primary: true,
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  childAspectRatio: 0.60, //1.0
                  mainAxisSpacing: 20, //1.0
                  // crossAxisSpacing: 4.0, //1.0
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      color: Colors.grey,
                    ),
                    Container(
                      height: 30,
                      width: 20,
                      color: Colors.grey,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      color: Colors.grey,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      color: Colors.grey,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      color: Colors.grey,
                    ),
                    Icon(Icons.arrow_forward_rounded),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}



