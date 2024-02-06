import 'package:flutter/material.dart';

class DisplayImages extends StatefulWidget {
  const DisplayImages({super.key});
  @override
  State createState() => _DisplayImagesState();
}

class _DisplayImagesState extends State<DisplayImages> {
  List<String> imageList = [
    "https://images.unsplash.com/photo-1551368321-dddf8a05c459?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8MSUyMDF8ZW58MHx8MHx8fDA%3D",
    "https://croppola.com/croppola/example-bird2/image.jpg?algorithm=croppola&aspectRatio=1&width=500&thumbnailMaximumWidth=150",
    "https://us-tuna-sounds-images.voicemod.net/61c53d46-9994-4d0b-b36d-1f7deb433535-1688019257141.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Listview Builder Demo"),
        ),
        body: ListView.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(
                imageList[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
