import 'package:firebase_assignment/models/note_model.dart';
import 'package:firebase_assignment/routing/app_routes.dart';
import 'package:firebase_assignment/screens/create_notes.dart';
import 'package:firebase_assignment/screens/notes_details.dart';
import 'package:firebase_assignment/screens/notes_list.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static final GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.createNoteScreen,
    routes: [
      GoRoute(
        path: AppRoutes.createNoteScreen,
        name: AppRoutes.createNoteScreen,
        builder: (context, state) => const CreateNotes(),
      ),
      GoRoute(
        path: AppRoutes.notesListScreen,
        name: AppRoutes.notesListScreen,
        builder: (context, state) => const NotesList(),
      ),
      GoRoute(
        path: AppRoutes.noteDetailsScreen,
        name: AppRoutes.noteDetailsScreen,
        builder: (context, state) {
          final note = state.extra as NoteModel;
          return NotesDetails(note: note);
        },
      ),
    ],
  );
}