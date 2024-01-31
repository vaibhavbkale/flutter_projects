import 'package:flutter/material.dart';

class Appbar2 extends StatefulWidget {
  const Appbar2({super.key});

  @override
  State<Appbar2> createState() => _Appbar2State();
}

class _Appbar2State extends State<Appbar2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
            Icons.favorite_rounded,
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
