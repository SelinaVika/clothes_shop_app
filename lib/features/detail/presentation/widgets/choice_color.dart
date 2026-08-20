import 'package:flutter/material.dart';

class ChoiceColor extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  const ChoiceColor({
    super.key,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: isSelected
                ? Border.all(color: Colors.black54, width: 2.5)
                : null,
          ),
        ),
      ),
    );
  }
}
