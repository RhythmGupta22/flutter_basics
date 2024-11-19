
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/IntroScreen.dart';

class splashScreen extends StatefulWidget{
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => IntroScreen()));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.lightGreen,
          child: Center(child: Text('El Dorado', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white, fontSize: 27),)),
        ),
      ),
    );
  }
}