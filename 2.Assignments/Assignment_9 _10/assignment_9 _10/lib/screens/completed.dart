import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controllers/blocs/todo_with_bloc/todo_bloc.dart';
import '../widgets/task_widget.dart';

class Completed extends StatelessWidget {
  const Completed({super.key});

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
                    'Completed',
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
                  backgroundColor: const Color(0xFF008080),
                  foregroundColor: Colors.white,
                  onPressed: () {
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.done_outline_outlined,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ),

        // Body: Completed Tasks
        Expanded(
          child: // Completed - نفس الفكرة
          BlocBuilder<TodoBloc, TodoState>(
            builder: (context, state) {
              if (state is TodoSuccess) {
                final completedTasks =
                state.todos.where((task) => task.isChecked).toList();
                if (completedTasks.isEmpty) {
                  return const Center(child: Text('No Completed Tasks'));
                }
                return ListView.builder(
                  itemCount: completedTasks.length,
                  itemBuilder: (context, index) =>
                      TaskWidget(taskModel: completedTasks[index]),
                );
              }
              return const Center(child: Text('No Completed Tasks'));
            },
          ),
        ),
      ],
    );
  }
}
