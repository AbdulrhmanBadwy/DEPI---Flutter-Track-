import 'package:assignment_9/controllers/todo_controller.dart';
import 'package:assignment_9/screens/add_task.dart';
import 'package:assignment_9/widgets/task_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<TodoController>();
    return Column(
      children: [
        // Task and its icon
        Container(
          margin: EdgeInsets.only(top: 84 , bottom: 97),
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tasks',
                    style: TextStyle(
                      fontFamily: 'bardo',
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                      provider.dateOnly,
                  ),
                ],
              ) ,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: FloatingActionButton(
                  enableFeedback: true,
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  focusColor: Colors.white,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return AddTask();
                    }));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)

                  ),
                  child: Icon(Icons.add , size: 40,),

                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Consumer <TodoController>(
            builder: (BuildContext context, TodoController value, _) {
              if(value.todos.isEmpty){
                return Center(
                  child: Text('No Tasks Found , Please Click to Create one '),
                );
              }
              return ListView.builder(
                itemCount: value.todos.length,
                itemBuilder: (context,index){
                  final task = provider.todos[index];
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
