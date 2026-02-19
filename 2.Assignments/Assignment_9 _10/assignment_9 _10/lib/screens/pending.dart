import 'package:assignment_9/controllers/block/todo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/task_widget.dart';

class Pending extends StatelessWidget {
  const Pending({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header
        Container(
          margin: const EdgeInsets.only(top: 84, bottom: 97),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Title + Date
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Pending',
                    style: TextStyle(
                      fontFamily: 'bardo',
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                      'date'
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: FloatingActionButton(
                  enableFeedback: true,
                  backgroundColor: const Color(0xFFFF6F61),
                  foregroundColor: Colors.white,
                  onPressed: () {
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.add_alarm,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ),

        // Body: Uncompleted Tasks
        Expanded(
          child: BlocBuilder<TodoCubit, TodoState>(
            builder: (context, state) {
              final unCompletedTasks =
              state.todos.where((task) => !task.isChecked).toList();

              if (unCompletedTasks.isEmpty) {
                return const Center(
                  child: Text('No Pending Tasks'),
                );
              }
              return ListView.builder(
                itemCount: unCompletedTasks.length,
                itemBuilder: (context, index) {
                  final task = unCompletedTasks[index];
                  return TaskWidget(taskModel: task);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
