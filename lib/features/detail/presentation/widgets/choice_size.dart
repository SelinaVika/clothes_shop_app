import 'package:flutter/material.dart';

class ChoiceSize extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const ChoiceSize({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: isSelected
                ? const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )
                : BorderRadius.circular(25),
            color: isSelected
                ? const Color.fromARGB(255, 238, 87, 27)
                : const Color(0xFFF2F3F7),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: isSelected
                    ? const Color(0xFFF2F3F7)
                    : const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
