import 'package:flutter/material.dart';
import 'package:food_devlivery_app/controller_page.dart';
import 'package:food_devlivery_app/screens/home_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ControllerPage() ,
    );
  }
}
