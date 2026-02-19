import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fourth_session/blocs/todo_cubit/todo_cubit.dart';
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
    return BlocProvider(
      create: (_)=> TodoCubit() ,
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
