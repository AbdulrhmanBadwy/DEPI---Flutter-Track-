import 'package:flutter/material.dart';
import 'package:self_learn/routing/app_route.dart';
import 'package:self_learn/routing/router_generator.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.firstScreen,
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}
