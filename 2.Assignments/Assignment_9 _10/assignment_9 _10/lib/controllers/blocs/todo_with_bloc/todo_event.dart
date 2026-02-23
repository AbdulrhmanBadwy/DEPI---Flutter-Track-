part of 'todo_bloc.dart';

@immutable
sealed class TodoEvent {}
class LoadTodosEvent extends TodoEvent{

}
class AddTodoEvent extends TodoEvent {
  final String task;
  final String category;
  final String date;

  AddTodoEvent({
    required this.task,
    required this.category,
    required this.date,
  });
}
class RemoveTodoEvent extends TodoEvent{
  final int id ;
  RemoveTodoEvent(this.id);

}
class ToggleCompletedEvent extends TodoEvent{
  final int id ;
  ToggleCompletedEvent(this.id);

}

class ChangeIndexEvent extends TodoEvent {
  final int index;

  ChangeIndexEvent(this.index);
}