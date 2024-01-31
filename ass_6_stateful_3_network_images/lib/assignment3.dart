import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  int? selectedIndex = 0;

  final List<String> imageList = [
    "https://litslink.com/wp-content/uploads/2020/03/flutter-app-featured.png",
    "https://framerusercontent.com/images/zlbKRoHgjKuoktRl2G7VGTqwMdg.png",
    "https://w7.pngwing.com/pngs/649/174/png-transparent-dart-google-developers-flutter-android-darts-text-logo-web-application.png"
  ];
  void showNextImage() {
    setState(() {
      selectedIndex = selectedIndex! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Images"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imageList[selectedIndex!],
            width: 300,
            height: 300,
          ),
          const SizedBox(
            height: 200,
          ),
          ElevatedButton(onPressed: showNextImage, child: const Text("Next")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: const Text("Reset")),
        ],
      )),
    );
  }
}
