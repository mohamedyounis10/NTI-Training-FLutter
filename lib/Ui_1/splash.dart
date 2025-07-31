import 'package:flutter/material.dart';
import 'package:session_5/Ui_1/home.dart';
import 'dart:async';

class Splash_screen extends StatefulWidget{
  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {

  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (c){
          return Home_screen();
        })
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image.asset('assets/images/logo.png',
               width: 199,
               height: 208,
             ),
          ],
        ),
      ),
    );
  }
}