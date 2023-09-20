import 'package:flutter/material.dart';
import 'package:lab_1/screens/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigator',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const FirstScreen(),
    );
  }
}


