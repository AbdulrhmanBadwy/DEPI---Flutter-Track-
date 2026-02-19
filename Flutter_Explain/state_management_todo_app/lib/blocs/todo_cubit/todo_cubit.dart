import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/todo_item.dart';

part 'todo_state.dart';

// Logic
class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoInitial());

  final List<TodoItem> _todos = [];
  final TextEditingController notesController = TextEditingController();

  // List<TodoItem> get todos => _todos;
  // Add
  void addTodo(){
    final title = notesController.text;
    if(title.trim().isEmpty)return;
    final nowTime = DateTime.now().toUtc().microsecondsSinceEpoch;
    final newTodo = TodoItem(id: nowTime,title: title );
    _todos.add(newTodo);

    // SetState for block
    emit(TodoSuccess(todos: _todos));
  }
  // Remove
  void removeTodo(int id){
    _todos.removeWhere((item)=> item.id  == id );
    emit(TodoSuccess(todos: _todos));
  }
  // Mark as Completed
  void toggleCompleted(int id  ){
    final item = _todos.firstWhere((item)=>item.id == id);
    item.isChecked = !item.isChecked;
    emit(TodoSuccess(todos: _todos));
  }
// Filtration
}
