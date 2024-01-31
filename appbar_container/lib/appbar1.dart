import 'package:flutter/material.dart';

class Appbar1 extends StatefulWidget {
  const Appbar1({super.key});

  @override
  State<Appbar1> createState() => _Appbar1State();
}

class _Appbar1State extends State<Appbar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 79, 111, 24),
        title: const Text(
          "Vaibhav Kale",
          style: TextStyle(
            fontStyle: FontStyle.normal,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.toc,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
