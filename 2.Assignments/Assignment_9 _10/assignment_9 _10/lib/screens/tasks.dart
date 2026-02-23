import 'package:assignment_9/controllers/blocs/todo_with_bloc/todo_bloc.dart';
import 'package:assignment_9/screens/add_task.dart';
import 'package:assignment_9/widgets/task_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
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
                children: [
                  const Text(
                    'Tasks',
                    style: TextStyle(
                      fontFamily: 'bardo',
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                 Text('date')
                ],
              ),
              // Add Task Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: FloatingActionButton(
                  enableFeedback: true,
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  focusColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BlocProvider.value(
                            value: context.read<TodoBloc>(),
                            child: const AddTask(),
                          );
                        },
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(Icons.add, size: 40),
                ),
              ),
            ],
          ),
        ),

        // Body: List of tasks
        Expanded(
          child: BlocBuilder<TodoBloc, TodoState>(
            builder: (context, state) {
              if (state is TodoInitial) {
                return const Center(
                  child: Text(
                    'No Tasks Found, Please Click To Create One',
                    textAlign: TextAlign.center,
                  ),
                );
              }
              if(state is TodoSuccess){
                return ListView.builder(
                  itemCount: state.todos.length,
                  itemBuilder: (context, index) {
                    final task = state.todos[index];
                    return TaskWidget(taskModel: task);
                  },
                );
              }
              return Center(child: Text('fail State'),);
            },
          ),
        ),
      ],
    );
  }
}
