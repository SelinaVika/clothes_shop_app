import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.items,
    required this.onTap,
    this.currentIndex = 0,
  }) : assert(items.length > 1, '');

  final List<IconData> items;
  final ValueChanged<int> onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: List.generate(
          items.length,
          (index) => Expanded(
            child: GestureDetector(
              onTap: () => onTap(index),
              child: Icon(
                items[index],
                color: currentIndex == index
                    ? const Color.fromARGB(255, 212, 62, 3)
                    : Colors.grey,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
