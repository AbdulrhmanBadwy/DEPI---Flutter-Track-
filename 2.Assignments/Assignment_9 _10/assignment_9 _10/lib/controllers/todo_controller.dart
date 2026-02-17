import 'package:assignment_9/models/task_model.dart';
import 'package:flutter/widgets.dart';

class TodoController extends ChangeNotifier {
  int _currentIndex = 0 ;
  int get currentIndex => _currentIndex;
  DateTime today = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  late String dateOnly =
      "${today.day.toString().padLeft(2,'0')}/"
      "${today.month.toString().padLeft(2,'0')}/"
      "${today.year}";

  final List<TaskModel> _todos = [];
  List <TaskModel>get todos => _todos;
  final TextEditingController taskController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  // Add
  void addTodo() {
    final task = taskController.text;
    final category = categoryController.text;
    final date = dateController.text;
    if (task.trim().isEmpty || category.trim().isEmpty || date.trim().isEmpty)
      {
        return;
      }

    final nowTime = DateTime.now().toUtc().microsecondsSinceEpoch;

    final newTodo = TaskModel(
      task: task,
      category: category,
      date: date,
      id: nowTime,
    );

    _todos.add(newTodo);
    notifyListeners();
  }

  // Remove
  void removeTodo(int id){
    _todos.removeWhere((task)=>task.id == id );
    notifyListeners();
  }
  // filtration
    void filtrationTodo(){

    }
  // Mark as complete
  void toggleCompleted(int id ){
    final task = _todos.firstWhere((task) => task.id == id );
    task.isChecked = !task.isChecked;
    notifyListeners();
  }

  void changeScreenIndex(int index ){
    _currentIndex = index;
    notifyListeners();
  }

  bool isChecked(index){
    return (_todos[index].isChecked);
  }
}
