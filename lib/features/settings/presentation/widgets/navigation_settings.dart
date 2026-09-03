import 'package:flutter/material.dart';

class NavigationSettings extends StatelessWidget {
  const NavigationSettings({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.red,
        alignment: Alignment.centerLeft,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(color: Color(0xFF1C1C1E), fontSize: 16),
          ),
          const Icon(
            Icons.chevron_right_rounded,
            color: Color(0xFF1C1C1E),
            size: 22,
          ),
        ],
      ),
    );
  }
}
