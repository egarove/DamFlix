
import 'package:fl_damflix/screens/screens.dart';
import 'package:fl_damflix/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DAMFlix',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home':(context) => HomeScreen(),
        'details':(context) => DetailsScreen()
      },
      theme: AppTheme.lightTheme,
    );
  }
}