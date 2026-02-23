part of 'todo_bloc.dart';

@immutable
sealed class TodoState {}

final class TodoInitial extends TodoState {}

final class TodoLoading extends TodoState {}
final class TodoSuccess extends TodoState {
  final List<TaskModel> todos;
  final int currentIndex;

  TodoSuccess({required this.todos, this.currentIndex = 0});
}
final class TodoFailed extends TodoState {}
