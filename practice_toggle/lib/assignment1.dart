import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  int count1 = 0;
  int count2 = 0;

  Color? setBox1Color() {
    if (count1 == 0) {
      return Colors.blue;
    } else if (count1 == 1) {
      return Colors.black;
    } else if (count1 == 2) {
      return Colors.green;
    } else if (count1 == 3) {
      count1 = 0;
      return Colors.blue;
    }
    return null;
  }

  Color? setBoxColor2() {
    if (count2 == 0) {
      return Colors.yellow;
    } else if (count2 == 1) {
      return Colors.red;
    } else if (count2 == 2) {
      return Colors.blue;
    } else if (count2 == 3) {
      count2 = 0;
      return Colors.green;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Colors"),
        backgroundColor: Colors.amber,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: setBox1Color(),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count1++;
                    });
                  },
                  child: const Text("Button1")),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: setBoxColor2(),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count2++;
                    });
                  },
                  child: const Text("Button2")),
            ],
          ),
        ],
      ),
    );
  }
}
