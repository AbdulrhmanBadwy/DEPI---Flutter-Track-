import 'package:firebase_assignment/cubit/notes_cubit.dart';
import 'package:firebase_assignment/cubit/notes_state.dart';
import 'package:firebase_assignment/routing/app_routes.dart';
import 'package:firebase_assignment/styling/app_colors.dart';
import 'package:firebase_assignment/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NotesList extends StatefulWidget {
  const NotesList({super.key});

  @override
  State<NotesList> createState() => _NotesListState();
}

class _NotesListState extends State<NotesList> {
  @override
  void initState() {
    super.initState();
    context.read<NotesCubit>().fetchNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: AppColors.headLineNoteColor, size: 20.sp),
          onPressed: () => context.pop(),
        ),
        title: Text('Notes List', style: AppStyles.appBarStyle),
        centerTitle: true,
      ),
      body: BlocConsumer<NotesCubit, NotesState>(
        listener: (context, state) {
          if (state is NoteActionSuccess) {
            context.read<NotesCubit>().fetchNotes();
          }
          if (state is NotesError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.redAccent,
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is NotesLoading) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.elevatedButtonColor,
              ),
            );
          }

          if (state is NotesSuccess) {
            if (state.notes.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.note_alt_outlined,
                        size: 60.sp,
                        color: AppColors.descriptionColor),
                    SizedBox(height: 12.h),
                    Text(
                      'No notes yet.\nCreate your first one!',
                      textAlign: TextAlign.center,
                      style: AppStyles.descriptionNoteStyle,
                    ),
                  ],
                ),
              );
            }

            return ListView.separated(
              padding: EdgeInsets.symmetric(
                  horizontal: 20.w, vertical: 16.h),
              itemCount: state.notes.length,
              separatorBuilder: (_, __) => SizedBox(height: 12.h),
              itemBuilder: (context, index) {
                final note = state.notes[index];
                return InkWell(
                  onTap: () => context.pushNamed(
                    AppRoutes.noteDetailsScreen,
                    extra: note,
                  ),
                  borderRadius: BorderRadius.circular(12.r),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.w, vertical: 14.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: AppColors.borderColor),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                note.title,
                                style: AppStyles.headLineInNoteList,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                note.description,
                                style:
                                AppStyles.descriptionInNoteList,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8.w),
                        IconButton(
                          onPressed: () => context
                              .read<NotesCubit>()
                              .deleteNote(note.id),
                          icon: Icon(
                            Icons.delete_outline_rounded,
                            color: Colors.grey.shade400,
                            size: 22.sp,
                          ),
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}