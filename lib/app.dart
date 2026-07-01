import 'package:flutter/material.dart';
import 'core/app_theme.dart';
import 'screens/home_screen.dart';

class EmergencyApp extends StatelessWidget {
  const EmergencyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Emergency Assistance",
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}