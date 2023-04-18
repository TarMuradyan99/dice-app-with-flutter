import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  StyledText(this.text, {super.key});
 final String text;
  Widget build(context) {
    return  Center(
        child: Text(
      text,
      style:
          TextStyle(fontSize: 50.0, color: Color.fromARGB(255, 255, 255, 255)),
    ));
  }
}
