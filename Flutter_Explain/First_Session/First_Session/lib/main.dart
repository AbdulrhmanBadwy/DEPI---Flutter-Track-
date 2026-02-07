import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Entry point

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Badwy Project',
            style: TextStyle(
              backgroundColor: Colors.red,
              letterSpacing: 5,
            ),
          ),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 300,
            color: Colors.green,
            child: Center(
              child: Text(
                  'Hello World!!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  backgroundColor: Colors.red,
                  letterSpacing: 7,
                  wordSpacing: -5,
                ),
                softWrap: true ,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

