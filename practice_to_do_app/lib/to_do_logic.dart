import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_to_do_app/todo_model_class.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State createState() => _ToDoAppState();
}

class _ToDoAppState extends State {
  List<ToDoModelClass> todoList = [
    ToDoModelClass(
      title: "Take Notes",
      description: "Take notes of every app you write",
      date: "10 July 2023",
    ),
    ToDoModelClass(
      title: "Arrange Meeting",
      description: "Meet the backend team",
      date: "10 July 2023",
    ),
  ];

  var listOfColors = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-Do List",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 16,
            ),

            child: Container(
              decoration: BoxDecoration(
                color: listOfColors[index % listOfColors.length],
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 10),
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
