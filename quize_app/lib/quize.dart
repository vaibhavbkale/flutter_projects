import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Quiz(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State createState() => _QuizApp();
}

class _QuizApp extends State {
  
}
