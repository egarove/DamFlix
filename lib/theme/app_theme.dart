import 'package:flutter/material.dart';

class AppTheme {
  
  static Color primary = Colors.red;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,

    appBarTheme: AppBarTheme(
      backgroundColor: primary,
      foregroundColor: Colors.white,
      elevation: 20,
    ),
    );
}
