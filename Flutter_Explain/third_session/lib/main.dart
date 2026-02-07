import 'package:flutter/material.dart';
import 'package:third_session/home_screen.dart';
import 'package:third_session/screens/product_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
