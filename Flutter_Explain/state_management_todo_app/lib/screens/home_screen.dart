import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fourth_session/blocs/todo_cubit/todo_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final todoCubit = context.read<TodoCubit>();
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
                    controller:  todoCubit.notesController ,
                    decoration: InputDecoration(
                      hintText: 'Write your notes',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                TextButton(onPressed: () {
                  todoCubit.addTodo();
                  todoCubit.notesController.clear();
                }, child: Text('Add +')),
              ],
            ),
          ),
         BlocBuilder<TodoCubit,TodoState>
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
                       todoCubit.removeTodo(item.id);
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
                         todoCubit.toggleCompleted(item.id);
                       }),
                     ),
                   );
                 },
               );
             }
             if(state is TodoFailed){
               return Center(
                 child: Text('Your todos List is empty'),
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
