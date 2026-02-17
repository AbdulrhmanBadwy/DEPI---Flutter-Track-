import 'package:assignment_9/controllers/todo_controller.dart';
import 'package:assignment_9/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskWidget extends StatefulWidget {
  final TaskModel taskModel;
  const TaskWidget({super.key , required this.taskModel });

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
  final provider = context.read<TodoController>();
    return Dismissible(
      key: Key(widget.taskModel.id.toString()),
      onDismissed: (_){
        provider.removeTodo(widget.taskModel.id);
      },
      background: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
        color: Colors.red,
        ),
        child: Icon(Icons.delete_forever),
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        child: Row(
          children: [
            Transform.scale(
              scale: 1.4,
              child: Checkbox(value: widget.taskModel.isChecked , onChanged: (value){
                provider.toggleCompleted(widget.taskModel.id);
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
                widget.taskModel.isChecked? Text(widget.taskModel.task , style: TextStyle(
                  fontSize: 20 ,
                  decoration: TextDecoration.lineThrough,
                  decorationThickness: 5,
                  decorationColor: Colors.grey,
                  color: Colors.grey
                ),): Text(widget.taskModel.task, style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                ),),
                Row(
                  spacing: 50,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(widget.taskModel.category , style: TextStyle(color: Colors.grey),),
                    Text(widget.taskModel.date , style: TextStyle(color: Colors.grey),),
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
