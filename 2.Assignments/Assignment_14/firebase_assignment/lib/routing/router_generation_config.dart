import 'package:firebase_assignment/models/note_model.dart';
import 'package:firebase_assignment/routing/app_routes.dart';
import 'package:firebase_assignment/screens/create_notes.dart';
import 'package:firebase_assignment/screens/login_screen.dart';
import 'package:firebase_assignment/screens/notes_details.dart';
import 'package:firebase_assignment/screens/notes_list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static final GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.createNoteScreen,
    redirect: (context, state) {
      final isAuthenticated = FirebaseAuth.instance.currentUser != null;
      final isLoginRoute = state.matchedLocation == AppRoutes.loginScreen;
      final protectedRoutes = <String>{
        AppRoutes.createNoteScreen,
        AppRoutes.notesListScreen,
        AppRoutes.noteDetailsScreen,
      };
      final isProtectedRoute =
          protectedRoutes.contains(state.matchedLocation);

      if (!isAuthenticated && isProtectedRoute) {
        return AppRoutes.loginScreen;
      }

      if (isAuthenticated && isLoginRoute) {
        return AppRoutes.notesListScreen;
      }

      return null;
    },
    routes: [
      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
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