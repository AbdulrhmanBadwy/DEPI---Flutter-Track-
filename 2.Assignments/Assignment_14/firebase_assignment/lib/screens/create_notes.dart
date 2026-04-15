import 'package:firebase_assignment/cubit/auth_cubit.dart';
import 'package:firebase_assignment/cubit/notes_cubit.dart';
import 'package:firebase_assignment/cubit/notes_state.dart';
import 'package:firebase_assignment/routing/app_routes.dart';
import 'package:firebase_assignment/styling/app_colors.dart';
import 'package:firebase_assignment/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreateNotes extends StatefulWidget {
  const CreateNotes({super.key});

  @override
  State<CreateNotes> createState() => _CreateNotesState();
}

class _CreateNotesState extends State<CreateNotes> {
  final _titleController = TextEditingController();
  final _descController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    super.dispose();
  }

  void _onSave() {
    final title = _titleController.text.trim();
    final desc = _descController.text.trim();

    if (title.isEmpty || desc.isEmpty) {
      _showSnackBar('Please fill in all fields', isError: true);
      return;
    }
    context.read<NotesCubit>().addNote(title: title, description: desc);
  }

  void _showSnackBar(String msg, {bool isError = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        backgroundColor: isError
            ? Colors.redAccent
            : AppColors.elevatedButtonColor,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final keyboardInset = MediaQuery.of(context).viewInsets.bottom;

    return BlocListener<NotesCubit, NotesState>(
      listener: (context, state) {
        if (state is NoteActionSuccess) {
          _titleController.clear();
          _descController.clear();
          _showSnackBar(state.message);
        }
        if (state is NotesError) {
          _showSnackBar(state.message, isError: true);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () => context.read<AuthCubit>().signOut(),
              icon: Icon(
                Icons.logout_rounded,
                color: AppColors.headLineNoteColor,
              ),
              tooltip: 'Logout',
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              top: 40.h,
              bottom: keyboardInset + 24.h,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Text('Create Note', style: AppStyles.appBarStyle),
                  ),
                  SizedBox(height: 30.h),

                  // Title field
                  Text('Note Title', style: AppStyles.labelStyle),
                  SizedBox(height: 8.h),
                  _buildTextField(
                    controller: _titleController,
                    hint: 'Enter note title',
                  ),
                  SizedBox(height: 20.h),

                  // Description field
                  Text('Description', style: AppStyles.labelStyle),
                  SizedBox(height: 8.h),
                  _buildTextField(
                    controller: _descController,
                    hint: 'Enter note description',
                    maxLines: 6,
                  ),
                  SizedBox(height: 24.h),

                  // Save button
                  BlocBuilder<NotesCubit, NotesState>(
                    builder: (context, state) {
                      return SizedBox(
                        width: double.infinity,
                        height: 52.h,
                        child: ElevatedButton(
                          onPressed: state is NotesLoading ? null : _onSave,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.elevatedButtonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            elevation: 0,
                          ),
                          child: state is NotesLoading
                              ? SizedBox(
                                  width: 22.w,
                                  height: 22.h,
                                  child: const CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 2.5,
                                  ),
                                )
                              : Text(
                                  'Save Note',
                                  style: AppStyles.buttonTextStyle,
                                ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 12.h),

                  // View Notes
                  Center(
                    child: TextButton(
                      onPressed: () => context.pushNamed(AppRoutes.notesListScreen),
                      child: Text(
                        'View Notes',
                        style: TextStyle(
                          color: AppColors.textButtonColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
    int maxLines = 1,
  }) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: AppStyles.descriptionNoteStyle,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14.sp),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors.borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors.borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: AppColors.elevatedButtonColor,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
