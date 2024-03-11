import 'package:flutter/material.dart';
import 'package:loginapp/core/color_and_font.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(gradient: ColorAndFont.backGround),
            child: const Center(
              child: Text(
                "Welcome",
                style: ColorAndFont.tittleText,
              ),
            )));
  }
}
