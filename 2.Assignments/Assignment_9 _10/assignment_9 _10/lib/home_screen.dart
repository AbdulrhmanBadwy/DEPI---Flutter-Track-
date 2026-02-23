import 'package:assignment_9/screens/completed.dart';
import 'package:assignment_9/screens/pending.dart';
import 'package:assignment_9/screens/tasks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controllers/blocs/todo_with_bloc/todo_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      Tasks(),
      Pending(),
      Completed(),
    ];
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        final currentIndex = state is TodoSuccess ? state.currentIndex : 0;
        return Scaffold(
          body: screens[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              context.read<TodoBloc>().add(ChangeIndexEvent(index));
            },
            items: const [
              BottomNavigationBarItem(icon: SizedBox.shrink(), label: 'All'),
              BottomNavigationBarItem(icon: SizedBox.shrink(), label: 'Pending'),
              BottomNavigationBarItem(icon: SizedBox.shrink(), label: 'Completed'),
            ],
          ),
        );
      },
    );
  }
}
