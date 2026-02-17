class TaskModel {
  final String task;
  final String category;
  final String date;
  bool isChecked;
  final int id;

  TaskModel({
    required this.task,
    required this.category,
    required this.date,
    this.isChecked = false,
    required this.id,
  });


}
