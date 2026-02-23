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

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      id: map['id'],
      task: map['title'],
      isChecked: map['isChecked'],
      category: map['category'],
      date: map['date'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': task,
      'isChecked': isChecked,
      'category': category,
      'date':date,
    };
  }
}
