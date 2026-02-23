import 'package:assignment_9/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/todo_storage.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoStorage _todoStorage = TodoStorage();
  final List<TaskModel> _todos = [];
  final TextEditingController taskController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController notesController = TextEditingController();
  TodoBloc() : super(TodoInitial()){

    on<LoadTodosEvent>((event, emit) async {
      final todos = await _todoStorage.loadTodos();
      _todos.clear();
      _todos.addAll(todos);

      emit(TodoSuccess(todos: List.from(_todos), currentIndex: 0));
    });

    on<AddTodoEvent>((event, emit) async {
      if (event.task.trim().isEmpty ||
          event.category.trim().isEmpty ||
          event.date.trim().isEmpty) {
        return;
      }

      final newTodo = TaskModel(
        task: event.task,
        category: event.category,
        date: event.date,
        id: DateTime.now().microsecondsSinceEpoch,
      );

      _todos.add(newTodo);
      await _todoStorage.saveTodos(_todos);

      emit(TodoSuccess(
        todos: List.from(_todos),
        currentIndex: state is TodoSuccess ? (state as TodoSuccess).currentIndex : 0,
      ));
    });
    on<RemoveTodoEvent>((event, emit) async {
      _todos.removeWhere((item) => item.id == event.id);
      await _todoStorage.saveTodos(_todos);
      emit(TodoSuccess(
        todos: List.from(_todos),
        currentIndex: state is TodoSuccess ? (state as TodoSuccess).currentIndex : 0,
      ));
    });

    on<ToggleCompletedEvent>((event, emit) async {
      final item = _todos.firstWhere((item) => item.id == event.id);
      item.isChecked = !item.isChecked;

      await _todoStorage.saveTodos(_todos);
      emit(TodoSuccess(
        todos: List.from(_todos),
        currentIndex: state is TodoSuccess ? (state as TodoSuccess).currentIndex : 0,
      ));
    });

    on<ChangeIndexEvent>((event, emit) {
      if (state is TodoSuccess) {
        final currentState = state as TodoSuccess;
        emit(TodoSuccess(
          todos: currentState.todos,
          currentIndex: event.index,
        ));
      }
    });
  }
}
