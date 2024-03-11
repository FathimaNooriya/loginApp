import 'package:flutter/material.dart';

class ColorAndFont {
  static const black = Color.fromARGB(183, 0, 0, 0);
  static const backGround = LinearGradient(colors: [
    Color.fromARGB(200, 27, 121, 197),
    Color.fromARGB(200, 92, 27, 197),
    Color.fromARGB(200, 157, 27, 197),
    Color.fromARGB(200, 197, 27, 98),
  ]);
  static const tittleText =
      TextStyle(color: black, fontSize: 28, fontWeight: FontWeight.w700);
  static const smallText =
      TextStyle(color: black, fontSize: 12, fontWeight: FontWeight.w400);
  static const buttonText = TextStyle(
      fontSize: 15,
      color: Color.fromARGB(255, 7, 7, 7),
      fontWeight: FontWeight.w600);
}
