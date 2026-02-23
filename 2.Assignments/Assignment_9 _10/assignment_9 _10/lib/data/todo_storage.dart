import 'dart:convert';

import 'package:assignment_9/models/task_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodoStorage {
  static const String _key = 'todos';

  Future<void> saveTodos(List<TaskModel> todos) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> todosList = todos
        .map((todo) => jsonEncode(todo.toMap()))
        .toList();

    prefs.setStringList(_key, todosList);
  }

  Future<List<TaskModel>> loadTodos() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final List<String>? savedList = prefs.getStringList(_key);

    if(savedList == null) return [];

    return savedList.map((item){
      final Map<String,dynamic> map = jsonDecode(item);
      return TaskModel.fromMap(map);
    }).toList();
  }
}