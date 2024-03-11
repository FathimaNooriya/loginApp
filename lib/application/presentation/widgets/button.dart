import 'package:flutter/material.dart';
import 'package:loginapp/core/color_and_font.dart';
import 'package:loginapp/core/paddings.dart';

class Button1 extends StatelessWidget {
  const Button1({
    super.key,
    required this.buttonText,
    required this.buttonPressed,
  });
  final String buttonText;
  final Function buttonPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings.myPadding,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(200, 255, 255, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          // ignore: void_checks
          return buttonPressed();
        },
        child: Text(
          buttonText,
          style: ColorAndFont.buttonText,
        ),
      ),
    );
  }
}
