import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';



void main() => runApp(MaterialApp(home: MyApp()));



class MyApp extends StatefulWidget {

  const MyApp({Key key}) : super(key: key);



  @override

  _MyAppState createState() => _MyAppState();

}



class _MyAppState extends State<MyApp> {

  List<Color> colors = [

    Color.fromRGBO(136, 14, 79, .7),

    Colors.blue,

    Colors.amber,

    Colors.pink,

    Colors.red,

    Colors.yellow,

    Colors.lime,

    Colors.purple,

    Colors.orangeAccent,

    Colors.pink,

    Colors.teal,

    Colors.white38,

  ];



  Color c1 = Colors.yellow;

  Color c2 = Colors.red;

  static var rnd = new Random();

  int sayi = rnd.nextInt(8);

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: GradientAppBar(

        brightness: Brightness.dark,

        elevation: 10.0,

        title: Text(

          "Gradient",

          style: TextStyle(

            fontSize: 22.0,

            fontWeight: FontWeight.bold,

          ),

        ),

        backgroundColorEnd: c1,

        backgroundColorStart: c2,

      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

            Text(c1.toString()),

            SizedBox(

              height: 40.0,

            ),

            Text(c2.toString()),

          ],

        ),

      ),

      floatingActionButton: FloatingActionButton(

        onPressed: () => changeColor(),

        tooltip: 'Change Colors',

        child: Icon(Icons.refresh),

      ),

    );

  }



  changeColor() {

    setState(() {

      c1 = colors[sayi = rnd.nextInt(colors.length)];

      c2 = colors[sayi = rnd.nextInt(colors.length)];

    });

  }

}