import 'package:flutter/material.dart';
import 'dart:math';

var randomObj = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      var randomizer = randomObj.nextInt(6) + 1;
      currentDice = 'assets/images/dice-$randomizer.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          currentDice,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 23,
            ),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
