part of 'todo_bloc.dart';

@immutable
sealed class TodoEvent {}
// اسماء الأكشن اللي انت هستخدمها

  class LoadTodosEvent extends TodoEvent{
  }

class AddTodoEvent extends TodoEvent {
  final String title ;

  AddTodoEvent(this.title);

}
class RemoveTodoEvent extends TodoEvent{
  final int id ;
  RemoveTodoEvent(this.id);

}
class ToggleCompletedEvent extends TodoEvent{
  final int id ;
  ToggleCompletedEvent(this.id);

}
