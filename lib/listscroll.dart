import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class scrolllist extends StatefulWidget {
  @override
  State<scrolllist> createState() => _scrolllistState();
}

class _scrolllistState extends State<scrolllist> {
  var arrrrr = [
    'Rhythm',
    'Ragam',
    'Raghav',
    'Rishab',
    'Abhishek',
    'Shreyansh',
    'Aryan',
    'Shantanu',
    'Aryan Gupta',
    'Aniket',
    'Yasar',
    'Rachit'
  ];
  var colorr_index = 0;
  var colorr = [
    Colors.deepPurpleAccent,
    Colors.lightGreenAccent,
    Colors.red,
    Colors.blue
  ];
  change_color() {
    colorr_index = (colorr_index + 1) % colorr.length;
    return colorr[colorr_index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: RadialGradient(colors: [
        Color(0xfffbc2eb),
        Color(0xffa6c1ee),
      ], center: Alignment.center, stops: [0.7,1.0])),
      child: ListWheelScrollView(
        itemExtent: 100,
        children: arrrrr
            .map((value) => Container(
                  width: 300,
                  decoration: BoxDecoration(
                      color: change_color(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    value,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.w700),
                  )),
                ))
            .toList(),
      ),
    ));
  }
}
