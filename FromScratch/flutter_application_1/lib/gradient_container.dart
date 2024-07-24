import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  final beginAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;
  final List<Color> colors;

  GradientContainer({required this.colors, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
