
import 'package:flutter/widgets.dart';
import 'package:fourth_session/models/todo_item.dart';

// Provider
class TodoController extends ChangeNotifier{

  final List<TodoItem> _todos = [];
  final TextEditingController notesController = TextEditingController();

  List<TodoItem> get todos => _todos;
  // Add
  void addTodo(){
    final title = notesController.text;
    if(title.trim().isEmpty)return;
    
    final nowTime = DateTime.now().toUtc().microsecondsSinceEpoch;
    final newTodo = TodoItem(id: nowTime,title: title );

    _todos.add(newTodo);

    // SetState for Provider
    notifyListeners();
  }
  // Remove
  void removeTodo(int id){
    _todos.removeWhere((item)=> item.id  == id );
    notifyListeners();
  }
  // Mark as Completed
  void toggleCompleted(int id  ){
    final item = _todos.firstWhere((item)=>item.id == id);
    item.isChecked = !item.isChecked;
    notifyListeners();
  }
  // Filtration

}