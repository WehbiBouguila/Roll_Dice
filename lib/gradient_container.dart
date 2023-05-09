import 'package:first_app/roll_dice.dart';
import 'package:flutter/material.dart';
import 'package:first_app/roll_dice.dart';

const startAlignement = Alignment.topLeft;
const endAlignement = Alignment.topRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color1,
              color2,
            ],
            begin: startAlignement,
            end: endAlignement,
          ),
        ),
        child: Center(
            child: DiceRoller(), ));
  }
// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key});
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: const [
//             Color.fromARGB(255, 71, 161, 140),
//             Color.fromARGB(255, 224, 152, 214)
//           ],
//           begin:startAlignement,
//           end:endAlignement ,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Hello Batataa'),
//     ));

//   }
}
