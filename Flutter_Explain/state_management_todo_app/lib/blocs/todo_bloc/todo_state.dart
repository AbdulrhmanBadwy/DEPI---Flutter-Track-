
// Polymorphism

import 'package:flutter/foundation.dart';

import '../../models/todo_item.dart';
part of 'todo_cubit.dart';

@immutable
sealed class TodoState {}

// States [ Initial Loading , Success , Success , failed ]
final class TodoInitial extends TodoState {}
final class TodoLoading extends TodoState {}
final class TodoSuccess extends TodoState {
  final List<TodoItem> todos;

  TodoSuccess({required this.todos});
}
final class TodoFailed extends TodoState {}
