import 'package:flutter/material.dart';
import 'dart:async';
import '../Ui_2/home.dart';

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
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image.asset('assets/images/movies.png',
               width: 168,
               height: 187,
             ),
          ],
        ),
      ),
    );
  }
}