import 'package:flutter/material.dart';

class Appbar5 extends StatefulWidget {
  const Appbar5({super.key});

  @override
  State<Appbar5> createState() => _Appbar5State();
}

class _Appbar5State extends State<Appbar5> {
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
              child: Image.asset('assets/img1.jpeg'),
              height: 150,
              width: 150,
            ),
            Container(
              child: Image.asset('assets/img2.jpeg'),
              height: 150,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
