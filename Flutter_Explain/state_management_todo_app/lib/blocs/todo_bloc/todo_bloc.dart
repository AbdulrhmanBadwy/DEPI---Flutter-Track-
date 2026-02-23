import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fourth_session/todo_storage.dart';

import '../../models/todo_item.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
    final TodoStorage _todoStorage = TodoStorage();
    final List<TodoItem> _todos = [];
    final TextEditingController notesController = TextEditingController();
  TodoBloc() : super(TodoInitial()) {
    on<LoadTodosEvent>((event,emit) async{
      final todos = await _todoStorage.loadTodos();
      _todos.clear();
      _todos.addAll(todos);
      
      emit(TodoSuccess(todos: List.from(_todos)));

    });

    on<AddTodoEvent>((event, emit) async {
      if(event.title.trim().isEmpty)return;
      final nowTime = DateTime.now().toUtc().microsecondsSinceEpoch;
      final newTodo = TodoItem(id: nowTime,title: event.title );
      _todos.add(newTodo);

      await _todoStorage.saveTodos(_todos);
      // SetState for bloc
      emit(TodoSuccess(todos: List.from(_todos)));
    });

    on<RemoveTodoEvent>((event,emit) async{
      _todos.removeWhere((item)=> item.id  == event.id );
      await _todoStorage.saveTodos(_todos);
      emit(TodoSuccess(todos: List.from(_todos)));
    });

    on<ToggleCompletedEvent>((event,emit)async{
      final item = _todos.firstWhere((item)=>item.id == event.id);
      item.isChecked = !item.isChecked;

      await _todoStorage.saveTodos(_todos);
      emit(TodoSuccess(todos: List.from(_todos)));
    });
  }
}
