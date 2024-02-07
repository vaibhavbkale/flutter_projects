import 'package:flutter/material.dart';

class Allwidgets extends StatefulWidget {
  const Allwidgets({super.key});

  @override
  State<Allwidgets> createState() => _AllWidgetsState();
}

class _AllWidgetsState extends State<Allwidgets> {
  List<String> classlist = [
    "DBMS",
    "TOC",
    "SPOS",
    "CNS",
    "SPM",
    "DAA",
    "ML",
    "BT",
    "CSDF",
    "AI",
    "SMA",
    "NLP",
    "BI"
  ];

  List<String> classImages = [
    "assets/one.jpg",
    "assets/four.jpg",
    "assets/three.jpg",
    "assets/four.jpg",
    "assets/one.jpg",
    "assets/four.jpg",
    "assets/three.jpg",
    "assets/four.jpg",
    "assets/one.jpg",
    "assets/four.jpg",
    "assets/three.jpg",
    "assets/four.jpg",
    "assets/one.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Google Classroom",
          style: TextStyle(
              fontStyle: FontStyle.normal, color: Colors.black, fontSize: 20),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: const [
          Icon(
            Icons.person,
            color: Colors.black,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: classlist.length,
          itemBuilder: (context, index) {
            return Container(
                height: 90,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(classImages[index]),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Computer Engineering : ${classlist[index]}',
                    style: const TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ));
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.blue,
        ),
      ),
    );
  }
}
