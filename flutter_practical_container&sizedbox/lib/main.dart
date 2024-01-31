import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Assignment1",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("container & sizedbox"),
            backgroundColor: Colors.blue,
          ),
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.black,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ]),
          )),
    );
  }
}
