import 'package:flutter/material.dart';
import 'dart:math';
final randomizer= Random();
class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  void RollDice() {
    setState(() {
      currentDiceRoll =randomizer.nextInt(6) + 1; // 1 <>6
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        "./assets/images/dice-$currentDiceRoll.png",
        width: 200,
      ),
      const SizedBox(height: 20),
      TextButton(
          onPressed: RollDice,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 20,
              // ),
              foregroundColor: Colors.black,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'))
    ]);
  }
}
