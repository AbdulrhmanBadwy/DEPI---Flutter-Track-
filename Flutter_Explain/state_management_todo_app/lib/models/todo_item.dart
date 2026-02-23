class TodoItem {
  final String title;
  bool isChecked;
  final int id;

  TodoItem({required this.id, required this.title, this.isChecked = false});

  @override
  String toString() {
    return 'Todo title is : $title';
  }

  factory TodoItem.fromMap(Map<String, dynamic> map) {
    return TodoItem(
      id: map['id'],
      title: map['title'],
      isChecked: map['isChecked'],
    );
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'isChecked': isChecked};
  }
}
