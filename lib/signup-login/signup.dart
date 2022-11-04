import 'package:mini_project/signup-login/signup.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'login.dart';
import 'package:mini_project/dashboard/dashboard.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:flutter/services.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  void dispose() {
    super.dispose();

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

  }
  @override
  Widget build(BuildContext context) {

    // double Wd = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(


        backgroundColor: Colors.transparent,
        toolbarHeight: 0,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: SweepGradient(
                colors: [
                  Colors.lightBlueAccent,
                  Colors.white70,
                  Colors.white
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        const Align(alignment: Alignment.topLeft,child: Text('Welcome!', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),),
                        const SizedBox(height: 30,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [const BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)
                              )]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey))
                                ),
                                child: const TextField(

                                  decoration: InputDecoration(
                                      hintText: "Email or Phone number",
                                      icon: Icon(Icons.account_circle_rounded),
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey))
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      icon: Icon(Icons.lock_rounded),
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                  obscureText: true,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey))
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                      hintText: "Confirm Password",
                                      icon: Icon(Icons.lock_rounded),
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                  obscureText: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40,),

                        TextButton(
                          child: Container(
                            height: 50,
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color.fromRGBO(147, 44, 13,1.0)
                            ),
                            child: const Center(
                              child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                          },),
                        const SizedBox(height: 10,),
                        const Text('Or',  style: TextStyle(color: Colors.grey, fontSize: 18),),
                        const SizedBox(height: 10,),
                        const Text("Continue with social media", style: TextStyle(color: Colors.grey),),
                        const SizedBox(height: 30,),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: TextButton(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.black
                                    ),
                                    child: const Center(
                                      child: Text("Google", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                    ),
                                  ),
                                  onPressed: (){

                                  },
                                )
                            ),
                            const SizedBox(width: 30,),
                            Expanded(
                              child: TextButton(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.blue
                                  ),
                                  child: const Center(
                                    child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                onPressed: (){ },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
