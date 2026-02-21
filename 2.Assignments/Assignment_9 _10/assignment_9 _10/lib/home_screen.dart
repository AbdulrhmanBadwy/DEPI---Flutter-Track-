import 'package:assignment_9/controllers/block/todo_cubit.dart';
import 'package:assignment_9/screens/completed.dart';
import 'package:assignment_9/screens/pending.dart';
import 'package:assignment_9/screens/tasks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      Tasks(),
      Pending(),
      Completed(),
    ];
    return BlocBuilder<TodoCubit, TodoState>(
      builder: (context, state) {
        return Scaffold(
          body: screens[state.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: TextStyle(
              color: Colors.black
            ),
            currentIndex: state.currentIndex,
            onTap: (index) {
              context.read<TodoCubit>().changeScreenIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: SizedBox.shrink(),
                label: 'All',
              ),
              BottomNavigationBarItem(
                icon: SizedBox.shrink(),
                label: 'Pending',
              ),
              BottomNavigationBarItem(
                icon: SizedBox.shrink(),
                label: 'Completed',
              ),
            ],
          ),
        );
      },
    );
  }
}
