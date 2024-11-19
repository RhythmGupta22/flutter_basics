import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/IntroScreen.dart';
import 'package:flutter_basics/listscroll.dart';
import 'package:flutter_basics/mappingscreen.dart';
import 'package:flutter_basics/splashScreen.dart';
import 'package:flutter_basics/textstyles/util.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Xirod'),
          headlineSmall: TextStyle(
              fontSize: 10, fontWeight: FontWeight.normal, fontFamily: 'Xirod'),
        ),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: IntroScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  var namefromIntro;
  MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // var contIndex = 0;
  // var contcolor = [Colors.cyanAccent, Colors.amberAccent, Colors.deepOrange, Colors.brown];
  // void changecolor(){
  //   setState(() {
  //     contIndex = (contIndex + 1) % (contcolor.length);
  //   });
  // }
  var username = TextEditingController();
  var password = TextEditingController();
  bool ispasswordvisible = false;
  var enter_date = "Enter your birthday";
  var enter_time = "Enter your birthtime";
  @override
  Widget build(BuildContext context) {
    var color_list = [
      Colors.pink,
      Colors.deepPurpleAccent,
      Colors.amberAccent,
      Colors.teal,
      Colors.blue,
      Colors.pink,
      Colors.deepPurpleAccent,
      Colors.amberAccent,
      Colors.teal,
      Colors.blue
    ];
    // print('Build Called');
    var arrNames = [
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
    var date = DateTime.now();
    Icon icon;
    if (ispasswordvisible) {
      icon = Icon(Icons.remove_red_eye);
    } else {
      icon = Icon(Icons.remove_red_eye_outlined);
    }
    ;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          "Flutter Basics",
          style: TextStyle(fontFamily: 'Xirod', fontSize: 15),
        ),
      ),

      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Hero(
                tag: 'trying_bg',
                child: Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/doodle-fast-food-icons-seamless-pattern-with-food-icons-fast-food-set-icons-fastfood-background-food-icons-on-white-background-hand-drown-pattern-with-fast-food-icons-free-vector.jpg'))),
                ),
              ),
              Text('Welcome ${widget.namefromIntro} '),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => IntroScreen()));
                  },
                  child: Text('Back')),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => scrolllist()));
                  },
                  child: Text('Next Screen')),
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  child: Container(
                      color: Colors.lightGreenAccent,
                      child: Image.asset(
                        'assets/images/logo2.png',
                        height: 200,
                        width: 200,
                      ))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mappingscreen()));
                  },
                  child: Text('Next Screen')),

            ],
          ),
        ),
      ),
      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   color: Colors.teal.shade100,
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Container(
      //           height: 300,
      //           width: 300,
      //           decoration: BoxDecoration(
      //             color: contcolor[contIndex],
      //             borderRadius: BorderRadius.circular(25),
      //             border: Border.all(
      //               width: 5,
      //               color: Colors.pinkAccent,
      //             ),
      //             boxShadow: [
      //               BoxShadow(
      //                 blurRadius: 30,
      //                 spreadRadius: 1,
      //                 color: Colors.pinkAccent,
      //               )
      //
      //             ]
      //           ),
      //         ),
      //
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: ElevatedButton(
      //             child: Text('Change Colour'),
      //             onPressed: (){
      //               changecolor();
      //             },
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      // body: Center(
      //   child: Container(
      //     width: 200,
      //     height: 100,
      //     color: Colors.indigo,
      //     child: Center(
      //         child: Text('We are using the centre.',
      //           style: TextStyle(
      //             fontSize: 15,
      //               color: Colors.deepOrange,
      //               fontWeight: FontWeight.bold, backgroundColor: Colors.amber),)),
      //   ),
      // )

      // body: TextButton(
      //   child: Text('Click Here'),
      //   onPressed: (){
      //     print('Button has been clicked');
      //   },
      //   onLongPress: (){
      //     print('Long Pressed');
      //   },
      // ),

      // body: ElevatedButton(
      //   child: Text('Press it'),
      //   onPressed: (){
      //     print('Button Pressed');
      //   },
      //   onLongPress: (){
      //     print('Button Long Pressed');
      //   },
      // ),

      // body: OutlinedButton(
      //     child: Text('Press it as hard as you can'),
      //     onPressed: (){
      //       print('Button Pressed');
      //       },
      //     onLongPress: (){
      //       print('Long Pressed');
      //       },
      // ),

      // body: Center(
      //     child: Container(
      //         width: 100,
      //         height: 100,
      //         child: Image.asset('assets/images/logo2.png'))),

      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     child: Center(
      //       child: Container(
      //         width: 400,
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           crossAxisAlignment: CrossAxisAlignment.stretch,
      //           children: [
      //             SingleChildScrollView(
      //               scrollDirection: Axis.horizontal,
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                 children: [
      //                   Text('X1', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      //                   Text('X2', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      //                   Text('X3', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      //                   Text('X1', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      //                   Text('X2', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      //                   Text('X3', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      //                   Text('X1', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      //                   Text('X2', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      //                   Text('X3', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      //                   Text('X1', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      //                   Text('X2', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      //                   Text('X3', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      //                 ],
      //               ),
      //             ),
      //             Text('A', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      //             Text('B', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      //             Text('C', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      //
      //             ElevatedButton(
      //             child: Text('Press it'),
      //             onPressed: (){
      //               print('Button Pressed');
      //             },
      //             onLongPress: (){
      //               print('Button Long Pressed');
      //             },
      //           ),
      //
      //             InkWell(
      //               onTap: (){
      //                 print('One Tap');
      //               },
      //               onDoubleTap: (){
      //                 print('Double Tap');
      //               },
      //               child: Container(
      //                 width: 100,
      //                 height: 100,
      //                 color: Colors.deepOrange,
      //                 child: Center(child: Padding(
      //                   padding: const EdgeInsets.all(15.0),
      //                   child: Text('Click here it is also a button', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.cyanAccent,)),
      //                 )),
      //               ),
      //             ),
      //
      //             Container(
      //               height: 200,
      //               color: Colors.indigo,
      //               margin: EdgeInsets.only(bottom: 10),
      //             ),
      //
      //             Container(
      //               height: 200,
      //               color: Colors.amberAccent,
      //               margin: EdgeInsets.only(bottom: 10),
      //             ),
      //
      //             Container(
      //               height: 200,
      //               color: Colors.cyanAccent,
      //               margin: EdgeInsets.only(bottom: 10),
      //             ),
      //
      //             Container(
      //               height: 200,
      //               color: Colors.deepPurpleAccent,
      //               margin: EdgeInsets.only(bottom: 10),
      //             ),
      //
      //             Container(
      //               height: 200,
      //               color: Colors.black,
      //               margin: EdgeInsets.only(bottom: 10),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),

      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   reverse: true,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(12.0),
      //       child: Text('A', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(12.0),
      //       child: Text('B', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(12.0),
      //       child: Text('C', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(12.0),
      //       child: Text('D', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(12.0),
      //       child: Text('E', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
      //     ),
      //   ],
      // ),

      // body: ListView.builder(itemBuilder: (context, index){
      //   return Text(arrNames[index], style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),);
      // },
      //   itemCount: arrNames.length,
      //   itemExtent: 100,
      //   // scrollDirection: Axis.vertical,
      // )

      //   body: ListView.separated(itemBuilder: (context, index){
      //   return Text(arrNames[index], style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),);
      // },
      //   itemCount: arrNames.length,
      //     separatorBuilder: (context, index){
      //     return Divider(thickness: 4, height: 60,);
      //     },
      //   // scrollDirection: Axis.vertical,
      // )

      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.pink,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 4,
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.brown,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 6,
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.deepOrange,
      //       ),
      //     ),
      //     Expanded(
      //       // flex: 8,
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.amber,
      //       ),
      //     ),
      //     Expanded(
      //       // flex: 10,
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.deepPurpleAccent,
      //       ),
      //     ),
      //
      //   ],
      // ),

      // body:
      // Container(
      //     color: Colors.deepPurpleAccent,
      //     margin: EdgeInsets.all(10),
      //     child: Padding(
      //       padding: const EdgeInsets.all(10),
      //       child: Text('This is to test padding and margin.', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
      //     )),

      // body: Column(
      //   children: [
      //     Expanded(flex: 2,
      //       child: ListView.separated(
      //           itemBuilder: (context, index){
      //             return ListTile(
      //               leading: CircleAvatar(
      //                 backgroundImage: AssetImage('assets/images/logo2.png'),
      //                 backgroundColor: Colors.amber,
      //                 radius: 20,
      //               ),
      //               // title: Text(arrNames[index], style: Theme.of(context).textTheme.headlineLarge),
      //               // subtitle: Text(arrNames[index], style: Theme.of(context).textTheme.headlineSmall),
      //               title: Text(arrNames[index], style:  mtextstyle21(textColor: Colors.amberAccent)),
      //               subtitle: Text(arrNames[index], style: mtextstyle11(),),
      //               trailing: Icon(Icons.add),
      //             );
      //             },
      //           separatorBuilder: (context, index){
      //             return Divider(height: 20,thickness: 2,);
      //             },
      //           itemCount: arrNames.length,
      //       ),
      //     ),
      //
      // Expanded(flex: 1,
      //   child: CircleAvatar(
      //     radius: 100,
      //     child: Column(
      //         children: [
      //           Image.asset('assets/images/logo2.png'),
      //           Text('Flutter app'),
      //         ],
      //       ),
      //     ),
      //   ),
      //
      //   ],
      // ),

      // body: Padding(
      //   padding: const EdgeInsets.all(5.0),
      //   child: Card(
      //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      //     shadowColor: Colors.black,
      //     elevation: 3,
      //     margin: EdgeInsets.all(8),
      //     child: Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           CircleAvatar(
      //             radius: 11,
      //               child: Image.asset('assets/images/logo2.png'),
      //           ),
      //           Text('Rhythm Gupta', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
      //           Text('90%', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
      //         ]
      //       ),
      //     ),
      //   ),
      // )

      // body: Center(
      //   child: Container(
      //     width: 300,
      //     height: 300,
      //     color: Colors.tealAccent,
      //     child: Center(child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text('Current Time = ${DateFormat('jms').format(date)}'),
      //         ElevatedButton(onPressed: (){setState(() {});},
      //             child: Text('Current Date'),)
      //       ],
      //     )),
      //   ),
      // ),

      // body: Center(
      //   child: Container(
      //     width: 350,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(left: 8),
      //               child: Text(
      //                 'Enter your Name',
      //                 style: TextStyle(
      //                     fontFamily: 'Xirod',
      //                     fontSize: 10,
      //                     fontWeight: FontWeight.w100),
      //               ),
      //             ),
      //             Container(
      //               height: 50,
      //               child: TextField(
      //                 controller: username,
      //                 decoration: InputDecoration(
      //                   enabledBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(10),
      //                       borderSide:
      //                           BorderSide(color: Colors.black, width: 1)),
      //                   focusedBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(10),
      //                       borderSide: BorderSide(
      //                         color: Colors.blue,
      //                         width: 2,
      //                       )),
      //                   prefixIcon: Icon(
      //                     Icons.account_circle_outlined,
      //                     color: Colors.black,
      //                   ),
      //                   hintText: 'Enter your name',
      //                   // labelText: 'Name',
      //                   // labelStyle: TextStyle(
      //                   //   color: Colors.black,
      //                   //   fontFamily: 'Xirod',
      //                   //   fontSize: 11,
      //                   // ),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //         Container(
      //           height: 25,
      //         ),
      //         Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(left: 8.0),
      //               child: Text(
      //                 'Enter your password',
      //                 style: TextStyle(
      //                     fontFamily: 'Xirod',
      //                     fontSize: 10,
      //                     fontWeight: FontWeight.w100),
      //               ),
      //             ),
      //             Container(
      //               height: 50,
      //               child: TextField(
      //                 // keyboardType: TextInputType.number,feik
      //                 controller: password,
      //                 obscureText: !ispasswordvisible,
      //                 obscuringCharacter: '*',
      //                 decoration: InputDecoration(
      //                     enabledBorder: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(10),
      //                         borderSide:
      //                             BorderSide(color: Colors.black, width: 1)),
      //                     focusedBorder: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(10),
      //                         borderSide: BorderSide(
      //                           color: Colors.blue,
      //                           width: 2,
      //                         )),
      //                     prefixIcon: Icon(
      //                       Icons.lock,
      //                       color: Colors.black,
      //                     ),
      //                     suffixIcon: IconButton(
      //                       onPressed: () {
      //                         setState(() {
      //                           ispasswordvisible = !ispasswordvisible;
      //                         }); //toggle password button
      //                       },
      //                       icon: icon,
      //                     ),
      //                     // labelText: 'Password',
      //                     hintText: 'Enter your password',
      //                     labelStyle: TextStyle(
      //                       color: Colors.black,
      //                       fontFamily: 'Xirod',
      //                       fontSize: 11,
      //                     )),
      //               ),
      //             ),
      //
      //             Container(
      //               height: 25,
      //             ),
      //
      //             Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Padding(
      //                   padding: const EdgeInsets.only(left: 8),
      //                   child: Text(
      //                     'Enter your Birthday',
      //                     style: TextStyle(
      //                         fontFamily: 'Xirod',
      //                         fontWeight: FontWeight.w100,
      //                         fontSize: 10),
      //                   ),
      //                 ),
      //                 Container(
      //                   width: 350,
      //                   height: 50,
      //                   decoration: BoxDecoration(
      //                       border: Border.all(color: Colors.black),
      //                       borderRadius: BorderRadius.circular(8)),
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.start,
      //                     children: [
      //                       IconButton(
      //                           onPressed: () async {
      //                             DateTime? datePicked = await showDatePicker(
      //                               context: context,
      //                               initialDate: DateTime.now(),
      //                               firstDate: DateTime(2004),
      //                               lastDate: DateTime(2026),
      //                             );
      //                             setState(() {
      //                               enter_date = DateFormat('yMMMMd').format(datePicked!);
      //                             });
      //                           },
      //                           icon: Icon(
      //                             Icons.date_range,
      //                             color: Colors.black,
      //                           )),
      //                       Text(
      //                         '${enter_date} ',
      //                         style: TextStyle(fontSize: 15),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             )
      //           ],
      //         ),
      //         Container(
      //           height: 25,
      //         ),
      //         Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(left: 8),
      //               child: Text(
      //                 'Enter your Birthtime',
      //                 style: TextStyle(
      //                     fontFamily: 'Xirod',
      //                     fontSize: 10,
      //                     fontWeight: FontWeight.w100),
      //               ),
      //             ),
      //             Container(
      //               height: 50,
      //               child: TextField(
      //                 // controller: username,
      //                 // enabled: false,
      //                 readOnly: true,
      //                 decoration: InputDecoration(
      //                   enabledBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(10),
      //                       borderSide:
      //                           BorderSide(color: Colors.black, width: 1)),
      //                   focusedBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(10),
      //                       borderSide: BorderSide(
      //                         color: Colors.blue,
      //                         width: 2,
      //                       )),
      //                   disabledBorder: OutlineInputBorder(
      //                     borderRadius: BorderRadius.circular(10),
      //                     borderSide: BorderSide(
      //                       color: Colors.black,
      //                       width: 1,
      //                     )
      //                   ),
      //                   prefixIcon: IconButton(
      //                       onPressed: () async {
      //                         TimeOfDay? pickedTime = await showTimePicker(
      //                           context: context,
      //                           initialTime: TimeOfDay.now(),
      //
      //                           // initialEntryMode: TimePickerEntryMode.input,
      //
      //                         );
      //
      //                       },
      //                       icon: Icon(Icons.timer_outlined, color: Colors.black,)),
      //                   hintText: enter_time,
      //                   hintStyle: TextStyle(
      //                     color: Colors.black,
      //                     fontWeight: FontWeight.w400
      //                   ),
      //                   // labelText: 'Name',
      //                   labelStyle: TextStyle(
      //                     color: Colors.black,
      //                     fontFamily: 'Xirod',
      //                     fontSize: 11,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //         Container(
      //           height: 40,
      //         ),
      //         Container(
      //             width: 350,
      //             height: 50,
      //             child: ElevatedButton(
      //               onPressed: () {
      //                 String usname = username.text;
      //                 String pass = password.text;
      //
      //                 print('Username: $usname, Password: $pass');
      //               },
      //               style: ElevatedButton.styleFrom(
      //                   backgroundColor: Colors.blue,
      //                   shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(10),
      //                   )),
      //               child: Text(
      //                 'Submit',
      //                 style: TextStyle(
      //                     fontFamily: 'Xirod',
      //                     fontSize: 11,
      //                     fontWeight: FontWeight.bold,
      //                     color: Colors.white),
      //               ),
      //             ))
      //       ],
      //     ),
      //   ),
      // ),

      // body: Padding(
      //   padding: const EdgeInsets.all(15.0),
      //   child: GridView.count(
      //     mainAxisSpacing: 15,
      //       crossAxisSpacing: 15,
      //       crossAxisCount: 3,
      //     children: [
      //       Container(
      //         color: Colors.tealAccent,
      //       ),
      //       Container(
      //         color: Colors.amberAccent,
      //       ),Container(
      //         color: Colors.deepOrange,
      //       ),Container(
      //         color: Colors.deepPurpleAccent,
      //       ),Container(
      //         color: Colors.pinkAccent,
      //       ),
      //   ],
      //   ),
      // ),

      // body: Padding(
      //   padding: const EdgeInsets.all(15.0),
      //   child: GridView.extent(
      //       maxCrossAxisExtent: 150,
      //     mainAxisSpacing: 15,
      //     crossAxisSpacing: 15,
      //     children: [
      //       Container(
      //         color: Colors.tealAccent,
      //       ),
      //       Container(
      //         color: Colors.amberAccent,
      //       ),
      //       Container(
      //         color: Colors.deepOrange,
      //       ),
      //       Container(
      //         color: Colors.deepPurpleAccent,
      //       ),
      //       Container(
      //         color: Colors.pinkAccent,
      //       ),
      //       Container(
      //         color: Colors.tealAccent,
      //       ),
      //       Container(
      //         color: Colors.amberAccent,
      //       ),
      //       Container(
      //         color: Colors.deepOrange,
      //       ),
      //       Container(
      //         color: Colors.deepPurpleAccent,
      //       ),
      //       Container(
      //         color: Colors.pinkAccent,
      //       ),
      //       ],
      //   ),
      // ),

      // body: Padding(
      //   padding: const EdgeInsets.all(15.0),
      //   child: GridView.builder(
      //       itemBuilder: (Context, index){
      //         return Container(
      //           color: color_list[index],
      //         );
      //       },
      //       itemCount: color_list.length,
      //       // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       //     crossAxisCount: 2)
      //       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //       maxCrossAxisExtent: 300,
      //       mainAxisSpacing: 15,
      //       crossAxisSpacing: 15,
      //       // mainAxisExtent: 200
      //     ),
      //   ),
      // ),

      // body: Center(
      //   child: Container(
      //     width: 1000,
      //     height: 1000,
      //     child: Stack(
      //         children: [
      //           Container(
      //             width: 400,
      //             height: 400,
      //             color: Colors.amber,
      //           ),
      //
      //           Positioned(
      //             top: 20,
      //             left: 20,
      //             child: Container(
      //                 width: 400,
      //                 height: 400,
      //                 color: Colors.pinkAccent,
      //             ),
      //           ),
      //
      //         ],
      //       ),
      //   ),
      // ),

      // body: RichText(
      //     text: TextSpan(
      //       style: TextStyle(
      //         color: Colors.deepOrange,
      //         fontSize: 20
      //       ),
      //       children: [
      //         TextSpan(text: 'Hi there', ),
      //         TextSpan(text: ' A very', style: TextStyle(color: Colors.amber)),
      //         TextSpan(text: ' GOOD MORNING', style: TextStyle(color: Colors.teal))
      //       ]
      //     )),
    );
  }
}
