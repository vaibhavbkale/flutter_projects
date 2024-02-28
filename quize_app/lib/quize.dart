import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

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
  State createState() => _QuizState();
}

class _QuizState extends State {
  bool isQuestionPage = true;

  Scaffold isQuestionScreen() {
    if (isQuestionPage = true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quize App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
        ),
        body: Column(),
      );
    } else {
      return Scaffold();
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
