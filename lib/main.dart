import 'package:flutter/material.dart';
import 'package:inner_voice/constants/app_colors.dart';
import 'package:inner_voice/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inner Voice',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
