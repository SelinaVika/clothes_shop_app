import 'package:flutter/material.dart';

class CharactsList extends StatelessWidget {
  const CharactsList({super.key, required this.title, required this.items});

  final String title;
  final List<Widget> items;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 5),
          Wrap(children: items),
        ],
      ),
    );
  }
}
