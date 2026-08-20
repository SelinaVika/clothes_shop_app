import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetalHeader extends StatelessWidget {
  const DetalHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: context.pop,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 235, 236, 241),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Icon(
              Icons.chevron_left,
              color: Color.fromARGB(255, 68, 67, 67),
              size: 25,
            ),
          ),
        ),
        const Text(
          'Details',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 235, 236, 241),
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Icon(
            Icons.share_outlined,
            color: Color.fromARGB(255, 68, 67, 67),
            size: 25,
          ),
        ),
      ],
    );
  }
}
