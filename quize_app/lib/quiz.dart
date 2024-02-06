import 'package:flutter/material.dart';

class Quizapp extends StatefulWidget {
  const Quizapp({super.key});

  @override
  State<Quizapp> createState() => _QuizappState();
}

class _QuizappState extends State<Quizapp> {
  int selectedIndex = 0;
  List<String> queList = [
    "What is Flutter Framework Actually? Choose Correct Options",
    "What is the purpose of the 'setState' method in Flutter?",
    "How does Flutter handle layout and what are the key principles behind its widget system?",
    "Explain the concept of 'hot reload' in Flutter and how it aids in the development process.",
    "What are Flutter keys, and why are they important when working with lists of widgets?",
    "Describe the role of the 'BuildContext' in Flutter and when it is commonly used.",
    "What is the 'Widget tree' in Flutter, and how does it contribute to the UI structure?",
    "How can you handle user input and gestures in Flutter applications?",
    "Explain the difference between 'StatelessWidget' and 'StatefulWidget' in Flutter.",
    "What is the purpose of the 'Future' and 'Stream' classes in Flutter, and how do they work?",
  ];
  int queno = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz_App"),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Question:$queno/${queList.length}"),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Question $queno:${queList[queno - 1]}"),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  for (int i = 1; i <= 4; i++)
                    Container(
                      width: 350,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("option$i")),
                    ),
                ],
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (queno < queList.length) {
              queno++;
            }
            //queno++;
          });
        },
        child: Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
