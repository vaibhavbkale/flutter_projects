import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.green,
              centerTitle: true,
              title: const Text(
                "Republic Day Celebration",
                style: TextStyle(
                    backgroundColor: Colors.white, color: Colors.orange),
              )),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 600,
                  width: 10,
                  color: Colors.black,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 300,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 100,
                      width: 300,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://www.shutterstock.com/image-vector/wheel-spokes-vector-iconmodern-ashok-600nw-2334393665.jpg",
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 300,
                      color: Colors.green,
                    ),
                    Container(
                      height: 460,
                      width: 200,
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
