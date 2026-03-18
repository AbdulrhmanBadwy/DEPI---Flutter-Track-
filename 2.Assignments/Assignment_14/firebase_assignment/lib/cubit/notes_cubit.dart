import 'package:firebase_assignment/cubit/notes_state.dart';
import 'package:firebase_assignment/models/note_model.dart';
import 'package:firebase_assignment/services/notes_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class NotesCubit extends Cubit<NotesState> {
  final NotesService _service;

  NotesCubit(this._service) : super(NotesInitial());

  Future<void> fetchNotes() async {
    emit(NotesLoading());
    try {
      final notes = await _service.getNotes();
      emit(NotesSuccess(notes: notes));
    } catch (e) {
      emit(NotesError(message: e.toString()));
    }
  }

  Future<void> addNote({
    required String title,
    required String description,
  }) async {
    emit(NotesLoading());
    try {
      final note = NoteModel(
        id: const Uuid().v4(),
        title: title,
        description: description,
        createdAt: DateTime.now(),
      );
      await _service.addNote(note);
      emit( NoteActionSuccess(message: 'Note added successfully!'));
    } catch (e) {
      emit(NotesError(message: e.toString()));
    }
  }

  Future<void> updateNote({
    required NoteModel note,
    required String newTitle,
    required String newDescription,
  }) async {
    emit(NotesLoading());
    try {
      final updated = note.copyWith(
        title: newTitle,
        description: newDescription,
      );
      await _service.updateNote(updated);
      emit( NoteActionSuccess(message: 'Note updated successfully!'));
    } catch (e) {
      emit(NotesError(message: e.toString()));
    }
  }

  Future<void> deleteNote(String id) async {
    emit(NotesLoading());
    try {
      await _service.deleteNote(id);
      emit( NoteActionSuccess(message: 'Note deleted successfully!'));
    } catch (e) {
      emit(NotesError(message: e.toString()));
    }
  }
}