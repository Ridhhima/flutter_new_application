import 'package:flutter/material.dart';
import 'package:news_application/pages/home.dart';
import 'package:news_application/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        brightness: Brightness.dark,
      ),
      home: home(),
    );
  }
}