import 'package:flutter/material.dart';

class armstrong extends StatefulWidget {
  const armstrong({Key? key}) : super(key: key); 

  @override
  State createState() => _ArmstrongState();
}

class _ArmstrongState extends State<armstrong> {
  int _count = 0;
  int? _selectedIndex = 0;
  final List<int> numList = [111, 123, 321, 121]; 

  void isPalindrome() {
    while (_selectedIndex! < numList.length) {
      int? reminder, sum = 0, temp;
      int? number = numList[_selectedIndex!];
      temp = number;
      while (number! > 0) {
        reminder = number % 10;
        sum = (sum! * 10) + reminder;
        number = number ~/ 10;
      }
      if (sum == temp) {
        _count++;
      }
      _selectedIndex = _selectedIndex! + 1;
    }
  }

  void isArmstrong() {
    // Implement the Armstrong number logic if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Number's Count"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Palindrome
            Column(
              children: [
                const SizedBox(
                  height: 100,
                  width: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                // Box1Button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _count = 0; // Reset the count before checking again
                      isPalindrome();
                    });
                  },
                  child: Text('Count of palindrome = $_count'),
                ),
                const SizedBox(
                  width: 100,
                ),
              ],
            ),
            // Armstrong
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                // Box1Button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // Implement the Armstrong number count logic here
                    });
                  },
                  child: Text("Count of Armstrong Number ="),
                ),
                const SizedBox(
                  width: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

