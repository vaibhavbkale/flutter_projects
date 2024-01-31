import 'package:flutter/material.dart';

class Appbar4 extends StatefulWidget {
  const Appbar4({super.key});

  @override
  State<Appbar4> createState() => _Appbar4State();
}

class _Appbar4State extends State<Appbar4> {
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
              width: 200,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
