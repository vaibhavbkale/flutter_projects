import 'package:flutter/material.dart';

class Styling extends StatefulWidget {
  const Styling({super.key});

  @override
  State<Styling> createState() => _StylingState();
}

class _StylingState extends State<Styling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Styling"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: Colors.blue,
            width: 5,
          ),
          gradient: const LinearGradient(
            stops: [0.3, 0.5],
            colors: [Colors.red, Colors.green],
          ),
        ),
      ),
    );
  }
}
