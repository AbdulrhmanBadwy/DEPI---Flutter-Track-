import 'package:assignment_9/controllers/todo_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/task_widget.dart';

class Pending extends StatelessWidget {
  const Pending({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<TodoController>();
    return Column(
      children: [
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
              ) ,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: FloatingActionButton(
                  enableFeedback: true,
                  backgroundColor: Color(0xFFFF6F61),
                  foregroundColor: Colors.white,
                  focusColor: Colors.white,
                  onPressed: (){
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)

                  ),
                  child: Icon(Icons.add_alarm_rounded , size: 40,),

                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Consumer<TodoController>(
            builder: (BuildContext context, TodoController value, _) {
              if(value.todos.isEmpty){
                return Center(
                  child: Text('No Tasks Found'),
                );
              }
              return ListView.builder(
                itemCount: value.todos.length,
                itemBuilder: (context,index){
                   if(!provider.isChecked(index)){
                    final task = provider.todos[index];
                    return TaskWidget(taskModel: task);
                   }
                   return Center(

                   );
                },
              );
            },

          ),
        ),

      ],

    );
  }
}
