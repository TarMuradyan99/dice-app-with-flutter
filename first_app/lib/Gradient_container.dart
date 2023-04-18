import 'dart:math';

import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/Styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;



class GradientContainer extends StatelessWidget {
  const GradientContainer(this.myColors, {super.key});
  final List<Color> myColors;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: myColors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
          child: DiceRoller(),
           ),
    );
  }
}
