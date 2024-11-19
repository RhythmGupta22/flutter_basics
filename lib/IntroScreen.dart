import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_basics/main.dart';

class IntroScreen extends StatefulWidget {
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  var getinput = TextEditingController();
  var _width = 200.0;
  var _height = 100.0;
  var _color = Colors.red;
  var flag = true;
  var flag1 = true;
  var _opacity = 1.0;
  var first = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text(
            "Intro Screen",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('This is the intro screen so please be patient'),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: Center(
                    child: TextField(
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          textBaseline: TextBaseline.alphabetic),
                      controller: getinput,
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.center,
                      cursorHeight: 20,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          ));
                    },
                    child: Text("Go Home")),
                SizedBox(
                  height: 20,
                ),
                AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  curve: Curves.slowMiddle,
                  opacity: _opacity,
                  child: AnimatedContainer(
                    width: _width,
                    height: _height,
                    color: _color,
                    curve: Curves.easeInCubic,
                    duration: Duration(seconds: 1),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (flag) {
                              _width = 100;
                              _height = 200;
                              _color = Colors.lightGreen;
                              flag = false;
                            } else {
                              _width = 200;
                              _height = 100;
                              _color = Colors.red;
                              flag = true;
                            }
                          });
                        },
                        child: Text("Animate")),
                    SizedBox(
                      width: 19,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (flag1) {
                              _opacity = 0.0;
                              flag1 = false;
                            } else {
                              _opacity = 1.0;
                              flag1 = true;
                            }
                          });
                        },
                        child: Text("Opacity")),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                AnimatedCrossFade(
                    sizeCurve: Curves.slowMiddle,
                    firstChild: Image.asset(
                      'assets/images/doodle-fast-food-icons-seamless-pattern-with-food-icons-fast-food-set-icons-fastfood-background-food-icons-on-white-background-hand-drown-pattern-with-fast-food-icons-free-vector.jpg',
                      width: 200,
                      height: 200,
                    ),
                    secondChild: Image.asset(
                      'assets/images/logo2.png',
                      width: 200,
                      height: 200,
                    ),
                    crossFadeState: first
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: Duration(seconds: 1)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (first) {
                          first = false;
                        } else {
                          first = true;
                        }
                      });
                    },
                    child: Text('Animate')),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Hero(
                    tag: 'trying_bg',
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/doodle-fast-food-icons-seamless-pattern-with-food-icons-fast-food-set-icons-fastfood-background-food-icons-on-white-background-hand-drown-pattern-with-fast-food-icons-free-vector.jpg')
                          ),
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
