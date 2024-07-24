import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';

class DiceAppStyle extends StatelessWidget {
  const DiceAppStyle({required this.colors, super.key});

  final beginAlmt = Alignment.topLeft;
  final endAlmt = Alignment.bottomRight;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: beginAlmt,
          end: endAlmt,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
