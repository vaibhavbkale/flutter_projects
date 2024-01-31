import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  int count = 0;
  bool box2color = false;
  bool box1color = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Container"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          count++;
        });
      }),
      body:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Column(
                  children: [
                Container(
                height: 100,
                width: 100,
                color: box1color ? Colors.red : Colors.green,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    box2color = !box2color;
                  });
                },
                child: const Text("Button 1"),
              ),
                  ],
                )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          column(
              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
              )
            ],
          )),
          
    );
  }
}
