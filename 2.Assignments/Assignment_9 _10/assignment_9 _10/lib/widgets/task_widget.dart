import 'package:assignment_9/controllers/blocs/todo_with_bloc/todo_bloc.dart'; // ✅ غيّر الـ import
import 'package:assignment_9/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskWidget extends StatefulWidget {
  final TaskModel taskModel;
  const TaskWidget({super.key, required this.taskModel});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TodoBloc>();

    return Dismissible(
      key: Key(widget.taskModel.id.toString()),
      onDismissed: (_) {
        bloc.add(RemoveTodoEvent(widget.taskModel.id));
      },
      background: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.centerLeft,
        color: Colors.red,
        child: Icon(Icons.delete_forever),
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Transform.scale(
              scale: 1.4,
              child: Checkbox(
                value: widget.taskModel.isChecked,
                onChanged: (value) {
                  bloc.add(ToggleCompletedEvent(widget.taskModel.id));
                },
                checkColor: Colors.white,
                activeColor: Color(0xFF008080),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.taskModel.isChecked
                    ? Text(widget.taskModel.task,
                    style: TextStyle(
                      fontSize: 20,
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 5,
                      decorationColor: Colors.grey,
                      color: Colors.grey,
                    ))
                    : Text(widget.taskModel.task,
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                Row(
                  spacing: 50,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(widget.taskModel.category,
                        style: TextStyle(color: Colors.grey)),
                    Text(widget.taskModel.date,
                        style: TextStyle(color: Colors.grey)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}