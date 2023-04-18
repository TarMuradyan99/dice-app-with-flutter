import 'package:flutter/material.dart';
import 'package:first_app/Gradient_container.dart';

void main() {
  runApp(
   const MaterialApp(
      home: Scaffold(
        body: GradientContainer([Color.fromRGBO(2, 8, 55,1),Color.fromRGBO(91, 110, 165, 1),Color.fromRGBO(2, 8, 55,1)]),
      ),
    ),
  );
}
