import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EduCourse(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class EduCourse extends StatefulWidget {
  const EduCourse({super.key});

  @override
  State createState() => _EduCourseState();
}

class _EduCourseState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 47,),
          const Row(
            children: [
              Icon(
                Icons.menu_outlined,
              ),
              SizedBox(width: 300,),
              Icon(Icons.apple_sharp),
            ],
          ),
          Column(
            children: [
              Text(
                "Welcome to New",
                style: GoogleFonts.jost(
                  fontWeight: FontWeight.w600,
                  fontSize: 26.98,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
              const SizedBox(height: 5,),
              Text("Educourse",
              style: GoogleFonts.jost(
                fontWeight: FontWeight.w700,
                fontSize: 37,
              ),
              ),
            ],
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.search_outlined),
              hintText: "Enter your Keyword",
            ),
          ),

          Container(
            width: 360,
            height: 520,
            decoration:  BoxDecoration(
              color: const Color.fromRGBO(255,255,255,1),
              border: Border.all(),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(38),
                topRight: Radius.circular(38),
              )
            ),
          ),
        ],
      ),
    );
  }
}