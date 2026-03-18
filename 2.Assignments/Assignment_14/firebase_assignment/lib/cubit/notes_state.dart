import 'package:equatable/equatable.dart';
import 'package:firebase_assignment/models/note_model.dart';

abstract class NotesState extends Equatable {
  @override
  List<Object?> get props => [];
}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> notes;
   NotesSuccess({required this.notes});

  @override
  List<Object?> get props => [notes];
}

class NoteActionSuccess extends NotesState {
  final String message;
   NoteActionSuccess({required this.message});

  @override
  List<Object?> get props => [message];
}

class NotesError extends NotesState {
  final String message;
   NotesError({required this.message});

  @override
  List<Object?> get props => [message];
}