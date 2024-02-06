import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("ListView"),
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(
                "https://images.unsplash.com/photo-1551368321-dddf8a05c459?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8MSUyMDF8ZW58MHx8MHx8fDA%3D",
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(
                "https://croppola.com/croppola/example-bird2/image.jpg?algorithm=croppola&aspectRatio=1&width=500&thumbnailMaximumWidth=150",
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(
                "https://us-tuna-sounds-images.voicemod.net/61c53d46-9994-4d0b-b36d-1f7deb433535-1688019257141.jpg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
