part of 'todo_cubit.dart';

@immutable
class TodoState {
  final List<TaskModel> todos;
  final int currentIndex;

  const TodoState({
    required this.todos,
    required this.currentIndex,
  });

  TodoState copyWith({
    List<TaskModel>? todos,
    int? currentIndex,
  }) {
    return TodoState(
      todos: todos ?? this.todos,
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}
