import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/todo_bloc/todo_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
@override
  void initState() {
    super.initState();
    context.read<TodoBloc>().add(LoadTodosEvent());

  }
  @override
  Widget build(BuildContext context) {
    final  todoBloc= context.read<TodoBloc>();
    final TextEditingController notesController = TextEditingController();
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
                    controller:  notesController ,
                    decoration: InputDecoration(
                      hintText: 'Write your notes',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                TextButton(onPressed: () {
                  todoBloc.add(AddTodoEvent(notesController.text));
                  notesController.clear();
                }, child: Text('Add +')),
              ],
            ),
          ),
         BlocBuilder<TodoBloc,TodoState>
           (builder: (BuildContext context , TodoState state){
             if(state is TodoInitial){
               return Center(
                 child: Text('Your todos List is empty'),
               );
             }

             if(state is TodoSuccess){
               return  ListView.builder(
                 physics: NeverScrollableScrollPhysics(),
                 itemCount: state.todos.length,
                 shrinkWrap: true,
                 itemBuilder: (context, index) {
                   final item = state.todos[index];
                   return Dismissible(
                     key: Key(item.id.toString()),
                     onDismissed: (_){
                       // todoController.removeTodo(item.id);
                       todoBloc.add(RemoveTodoEvent(item.id));
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
                         // todoController.toggleCompleted(item.id);
                         todoBloc.add(ToggleCompletedEvent(item.id));
                       }),
                     ),
                   );
                 },
               );
             }


             // Default widget
             return const Center(child: Text('No State is Found'),);
         }),
        ],
      ),
    );
  }
}
