import 'package:flutter/material.dart';

class AppThemeData{
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    primaryColorLight: Colors.blue.shade100,
    primaryColorDark: Colors.blue.shade900,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color:  Colors.black,
      ),
      bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Colors.black
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: Colors.black,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue,
      elevation: 2,
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue.shade800,
    primaryColorLight: Colors.blue.shade600,
    primaryColorDark: Colors.blue.shade400,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color:  Colors.white,
      ),
      bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Colors.white
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: Colors.white,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 2,
      centerTitle: true,
    ),

  );
}