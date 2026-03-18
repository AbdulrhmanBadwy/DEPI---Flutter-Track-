import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_assignment/models/note_model.dart';

class NotesService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String _collection = 'notes';

  CollectionReference get _ref => _firestore.collection(_collection);

  Future<void> addNote(NoteModel note) async {
    await _ref.doc(note.id).set(note.toMap());
  }

  Future<List<NoteModel>> getNotes() async {
    final snapshot =
    await _ref.orderBy('createdAt', descending: true).get();
    return snapshot.docs
        .map((doc) =>
        NoteModel.fromMap(doc.data() as Map<String, dynamic>, doc.id))
        .toList();
  }

  Future<void> updateNote(NoteModel note) async {
    await _ref.doc(note.id).update(note.toMap());
  }

  Future<void> deleteNote(String id) async {
    await _ref.doc(id).delete();
  }
}