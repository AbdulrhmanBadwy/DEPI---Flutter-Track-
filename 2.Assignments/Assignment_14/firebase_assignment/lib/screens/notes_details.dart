import 'package:firebase_assignment/cubit/notes_cubit.dart';
import 'package:firebase_assignment/cubit/notes_state.dart';
import 'package:firebase_assignment/models/note_model.dart';
import 'package:firebase_assignment/styling/app_colors.dart';
import 'package:firebase_assignment/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class NotesDetails extends StatefulWidget {
  final NoteModel note;

  const NotesDetails({super.key, required this.note});

  @override
  State<NotesDetails> createState() => _NotesDetailsState();
}

class _NotesDetailsState extends State<NotesDetails> {
  bool _isEditing = false;
  late TextEditingController _titleController;
  late TextEditingController _descController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.note.title);
    _descController =
        TextEditingController(text: widget.note.description);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    super.dispose();
  }

  void _toggleEdit() => setState(() => _isEditing = !_isEditing);

  void _onUpdate() {
    final title = _titleController.text.trim();
    final desc = _descController.text.trim();
    if (title.isEmpty || desc.isEmpty) {
      _showSnackBar('Fields cannot be empty', isError: true);
      return;
    }
    context.read<NotesCubit>().updateNote(
      note: widget.note,
      newTitle: title,
      newDescription: desc,
    );
  }

  void _onDelete() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.r)),
        title: Text('Delete Note', style: AppStyles.headLineNoteStyle),
        content: Text(
          'Are you sure you want to delete this note?',
          style: AppStyles.descriptionNoteStyle,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text('Cancel',
                style:
                TextStyle(color: AppColors.descriptionColor)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              context
                  .read<NotesCubit>()
                  .deleteNote(widget.note.id);
            },
            child: const Text('Delete',
                style: TextStyle(color: Colors.redAccent)),
          ),
        ],
      ),
    );
  }

  void _showSnackBar(String msg, {bool isError = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        backgroundColor:
        isError ? Colors.redAccent : AppColors.elevatedButtonColor,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final formattedDate =
    DateFormat('MM/dd/yyyy  HH:mm').format(widget.note.createdAt);

    return BlocListener<NotesCubit, NotesState>(
      listener: (context, state) {
        if (state is NoteActionSuccess) {
          _showSnackBar(state.message);
          if (state.message.contains('deleted')) {
            context.pop();
          } else {
            setState(() => _isEditing = false);
          }
        }
        if (state is NotesError) {
          _showSnackBar(state.message, isError: true);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBg,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded,
                color: AppColors.headLineNoteColor, size: 20.sp),
            onPressed: () => context.pop(),
          ),
          title: Text('Note Details', style: AppStyles.appBarStyle),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                _isEditing
                    ? Icons.close_rounded
                    : Icons.edit_outlined,
                color: AppColors.headLineNoteColor,
              ),
              onPressed: _toggleEdit,
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding:
          EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!_isEditing) ...[
                // View Mode
                Text(widget.note.title,
                    style: AppStyles.headLineNoteStyle),
                SizedBox(height: 16.h),
                Text(widget.note.description,
                    style: AppStyles.descriptionNoteStyle),
                SizedBox(height: 20.h),
                Text('Created At: $formattedDate',
                    style: AppStyles.createdAtStyle),
                SizedBox(height: 40.h),
                _buildButton(
                  label: 'Delete Note',
                  onPressed: _onDelete,
                  color: Colors.redAccent,
                ),
              ] else ...[
                // Edit Mode
                Text('Note Title', style: AppStyles.labelStyle),
                SizedBox(height: 8.h),
                _buildTextField(controller: _titleController),
                SizedBox(height: 20.h),
                Text('Description', style: AppStyles.labelStyle),
                SizedBox(height: 8.h),
                _buildTextField(
                    controller: _descController, maxLines: 8),
                SizedBox(height: 30.h),
                BlocBuilder<NotesCubit, NotesState>(
                  builder: (context, state) {
                    return _buildButton(
                      label: 'Update Note',
                      onPressed: _onUpdate,
                      isLoading: state is NotesLoading,
                    );
                  },
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    int maxLines = 1,
  }) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: AppStyles.descriptionNoteStyle,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(
            horizontal: 14.w, vertical: 14.h),
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
              color: AppColors.elevatedButtonColor, width: 1.5),
        ),
      ),
    );
  }

  Widget _buildButton({
    required String label,
    required VoidCallback onPressed,
    Color? color,
    bool isLoading = false,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 52.h,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.elevatedButtonColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r)),
          elevation: 0,
        ),
        child: isLoading
            ? SizedBox(
          width: 22.w,
          height: 22.h,
          child: const CircularProgressIndicator(
            color: Colors.white,
            strokeWidth: 2.5,
          ),
        )
            : Text(label, style: AppStyles.buttonTextStyle),
      ),
    );
  }
}