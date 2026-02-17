import 'package:flutter/material.dart';
import 'package:fourth_session/controllers/todo_controller.dart';
import 'package:fourth_session/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main(){
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> TodoController() ,
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
