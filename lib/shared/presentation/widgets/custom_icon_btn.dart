import 'package:flutter/material.dart';

class CustomIconBtn extends StatelessWidget {
  const CustomIconBtn({
    super.key,
    required this.icon,
    this.size = 24,
    required void Function() onTap,
  });

  final IconData icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      onPressed: () {},
      iconSize: size,
      padding: const EdgeInsets.all(10),
      style: IconButton.styleFrom(backgroundColor: const Color(0xFFEBECF1)),
      color: const Color.fromARGB(255, 103, 103, 105),
      icon: Icon(icon),
    );
  }
}
