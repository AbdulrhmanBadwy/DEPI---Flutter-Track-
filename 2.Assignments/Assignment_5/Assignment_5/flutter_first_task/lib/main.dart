import 'package:flutter/material.dart';

void main(){
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(name: 'AbdulrhmanBadwy'),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String name;
  const HomeScreen({required this.name,super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          centerTitle: true,
          title: Text(
            'First App',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Container(
            height: 150,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text(
                'Hello $name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

