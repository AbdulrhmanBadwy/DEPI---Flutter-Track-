import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  static const background = Color(0xFFF3F0FF);
  static const card = Colors.white;
  static const primary = Color(0xFF6B5CFF);
  static const primaryDark = Color(0xFF111B4D);
  static const textPrimary = Color(0xFF111B4D);
  static const textSecondary = Color(0xFF7D7A8F);
  static const track = Color(0xFFDAD8E5);
  static const toggleBackground = Color(0xFFF0EEFF);

  static const primaryGradient = LinearGradient(
    colors: [Color(0xFF7B6DFF), Color(0xFF5D4DFF)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
