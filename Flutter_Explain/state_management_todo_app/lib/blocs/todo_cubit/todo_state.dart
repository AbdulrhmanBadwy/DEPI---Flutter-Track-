part of 'todo_cubit.dart';

// Polymorphism
@immutable
sealed class TodoState {}

// States [ Initial Loading , Success , Success , failed ]
final class TodoInitial extends TodoState {}
final class TodoLoading extends TodoState {}
final class TodoSuccess extends TodoState {
  final List<TodoItem> todos;

  TodoSuccess({required this.todos});

  @override
  String toString() {

    return 'My Todos are $todos';
  }
}
final class TodoFailed extends TodoState {}
