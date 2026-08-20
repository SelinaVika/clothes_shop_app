import 'package:flutter/material.dart';

class CustomGradient extends StatelessWidget {
  const CustomGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 60),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [0, 0.2, 0.5],
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(92, 255, 255, 255),
            Colors.transparent,
          ],
        ),
      ),
    );
  }
}
