import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

var images = [
  'assets/Images/one.png',
  'assets/Images/two.png',
  'assets/Images/three.png',
  'assets/Images/four.png',
  'assets/Images/five.png',
  'assets/Images/six.png'
];
var randomImages = images[0];

class _DiceRollerState extends State<DiceRoller> {
  void rollDiced() {
    setState(() {
      randomImages = images[Random().nextInt(images.length)];
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          randomImages,
          width: 200,
        ),
        ElevatedButton(
            onPressed: rollDiced,
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                foregroundColor: Color.fromARGB(255, 221, 204, 16),
                backgroundColor: Colors.black38),
            child: Text(
              'Click here',
              style: TextStyle(fontSize: 28),
            ))
      ],
    );
  }
}
