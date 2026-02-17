import 'package:flutter/material.dart';
import 'package:fourth_session/controllers/todo_controller.dart';
    import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final todoController = Provider.of<TodoController>(context , listen: false);
    return Scaffold(
      appBar: AppBar(title: Text('Todo App'), centerTitle: true),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: TextFormField(
                    controller:  todoController.notesController ,
                    decoration: InputDecoration(
                      hintText: 'Write your notes',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                TextButton(onPressed: () {
                  setState(() {
                    todoController.addTodo();
                    todoController.notesController.clear();
                  });
                }, child: Text('Add +')),
              ],
            ),
          ),

          Consumer<TodoController>(
            builder: (BuildContext context, TodoController value, _) {

              if(value.todos.isEmpty){
                return Center(
                  child: Text('Your todos are empty , please add a new one! '),
                );
              }
              return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: value.todos.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final item = value.todos[index];
                  return Dismissible(
                    key: Key(item.id.toString()),
                    onDismissed: (_){
                      todoController.removeTodo(item.id);
                    },
                    background: Container(
                      padding: EdgeInsets.all(16),
                      alignment: Alignment.centerRight,
                      color: Colors.red,
                      child: Icon(Icons.delete_forever),
                    ),
                    child: ListTile(
                      title: Text(item.title),
                      trailing: Checkbox(value: item.isChecked, onChanged: (val) {
                        todoController.toggleCompleted(item.id);
                      }),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
