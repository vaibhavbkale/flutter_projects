import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});
  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Indian Flag"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: const Text("Add"),
      ),
      body: Container(
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (_count >= 1)
                ? Container(
                    height: 450,
                    width: 10,
                    color: Colors.black,
                  )
                : Container(),
            Column(
              children: [
                (_count >= 2)
                    ? Container(
                        height: 80,
                        width: 250,
                        color: Colors.orange,
                      )
                    : Container(),
                (_count >= 3)
                    ? Container(
                        height: 80,
                        width: 250,
                        color: Colors.white,
                        child: (_count >= 4)
                            ? Image.network(
                                "https://cdn.pixabay.com/photo/2023/04/06/16/29/ashoka-chakra-7904695_1280.png")
                            : Container(),
                      )
                    : Container(),
                (_count >= 5)
                    ? Container(
                        height: 80,
                        width: 250,
                        color: Colors.green,
                      )
                    : Container(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
