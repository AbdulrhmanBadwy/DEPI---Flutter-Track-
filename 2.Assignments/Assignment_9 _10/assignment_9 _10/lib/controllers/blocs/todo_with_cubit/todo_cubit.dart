


import 'package:assignment_9/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'todo_state.dart';
class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(const TodoState(todos: [], currentIndex: 0));

  final TextEditingController taskController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  // Add
  void addTodo() {
    if (taskController.text.trim().isEmpty ||
        categoryController.text.trim().isEmpty ||
        dateController.text.trim().isEmpty) {
      return;
    }

    final newTodo = TaskModel(
      id: DateTime.now().microsecondsSinceEpoch,
      task: taskController.text,
      category: categoryController.text,
      date: dateController.text,
    );

    emit(
      state.copyWith(
        todos: [...state.todos, newTodo],
      ),
    );
  }

  // Remove
  void removeTodo(int id) {
    emit(
      state.copyWith(
        todos: state.todos.where((t) => t.id != id).toList(),
      ),
    );
  }

  // Toggle complete
  void toggleCompleted(int id) {
    final updatedTodos = state.todos.map((task) {
      if (task.id == id) {
        task.isChecked = !task.isChecked;
      }
      return task;
    }).toList();

    emit(state.copyWith(todos: updatedTodos));
  }

  // Change bottom nav screen
  void changeScreenIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }
}
