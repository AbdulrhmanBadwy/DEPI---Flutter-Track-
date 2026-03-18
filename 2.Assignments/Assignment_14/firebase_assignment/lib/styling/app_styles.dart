import 'package:firebase_assignment/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle headLineNoteStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22.sp,
    color: AppColors.headLineNoteColor,
  );

  static TextStyle descriptionNoteStyle = TextStyle(
    fontSize: 16.sp,
    color: AppColors.headLineNoteColor,
  );

  static TextStyle headLineInNoteList = TextStyle(
    fontSize: 16.sp,
    color: AppColors.headLineNoteColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle descriptionInNoteList = TextStyle(
    fontSize: 14.sp,
    color: AppColors.descriptionColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle labelStyle = TextStyle(
    fontSize: 14.sp,
    color: AppColors.headLineNoteColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle appBarStyle = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.headLineNoteColor,
  );

  static TextStyle createdAtStyle = TextStyle(
    fontSize: 13.sp,
    color: AppColors.descriptionColor,
  );

  static TextStyle buttonTextStyle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}