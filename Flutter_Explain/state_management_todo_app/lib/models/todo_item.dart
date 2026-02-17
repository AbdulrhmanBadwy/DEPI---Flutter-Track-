
class TodoItem{
  final String title ;
   bool isChecked;
   final int id ;

  TodoItem({required this.id, required this.title,  this.isChecked = false});

  @override
  String toString() {
    return 'Todo title is : $title' ;
  }
}