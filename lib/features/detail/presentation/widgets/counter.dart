import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F3F7),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: const Color(0xFFE0E0E0)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildBtn(Icons.remove_rounded, () {}),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              '1',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1A1A1A),
              ),
            ),
          ),
          buildBtn(Icons.add_rounded, () {}),
        ],
      ),
    );
  }

  GestureDetector buildBtn(IconData icon, Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 34,
        height: 34,
        child: Icon(icon, size: 18, color: const Color(0xFF2D2D2D)),
      ),
    );
  }
}
