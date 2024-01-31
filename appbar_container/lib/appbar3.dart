import 'package:flutter/material.dart';

class Appbar3 extends StatefulWidget {
  const Appbar3({super.key});

  @override
  State<Appbar3> createState() => _Appbar3State();
}

class _Appbar3State extends State<Appbar3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Hello Core2Web",
          style: TextStyle(
            fontStyle: FontStyle.normal,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 200,
              width: 360,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
