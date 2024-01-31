import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MyPortfolio",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Text("Next"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              (count >= 1)
                  ? const Text(
                      "Name: Vaibhav Bhausaheb Kale",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  : const Text(""),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
              ),
              (count >= 2)
                  ? Container(
                      child: const Image(
                      image: AssetImage("assets/DSC_8507.jpg"),
                      height: 100,
                      width: 100,
                    ))
                  : Container(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              (count >= 3)
                  ? const Text(
                      "College: Singhad Institute of Technology & Science",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  : const Text(""),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
              ),
              (count >= 4)
                  ? Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4TpPOSbuPR5XBj0VlmGyozIk_Y_e3Mhanxlpi6IgzEg&s"))
                  : Container(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              (count >= 5)
                  ? const Text(
                      "Dream Company: Barclays",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  : const Text(""),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
              ),
              (count >= 6)
                  ? Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          "https://logos-world.net/wp-content/uploads/2021/08/Barclays-Logo.png"))
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }
}
