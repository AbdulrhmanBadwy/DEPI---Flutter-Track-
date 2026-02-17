import 'package:assignment_9/controllers/todo_controller.dart';
import 'package:assignment_9/screens/completed.dart';
import 'package:assignment_9/screens/pending.dart';
import 'package:assignment_9/screens/tasks.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Widget> body  = [
    Tasks(),
    Pending(),
    Completed(),
  ];
  @override
  Widget build(BuildContext context) {
      final provider = context.watch<TodoController>();
    return Scaffold(
      body: body[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        currentIndex: provider.currentIndex,
          onTap: (index){
          provider.changeScreenIndex(index);
          },
        enableFeedback: true,
          items: [
            BottomNavigationBarItem(
              icon:SizedBox.shrink(),
              label: 'All'
            ),
            BottomNavigationBarItem(
              icon:SizedBox.shrink(),
              label: 'Pending'
            ),
            BottomNavigationBarItem(
              icon:SizedBox.shrink(),
              label: 'Completed'
            ),

          ],
      ),
    );
  }
}
