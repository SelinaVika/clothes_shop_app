import 'dart:ui';

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  void showMenu(BuildContext context) {
    showModalBottomSheet(
      enableDrag: false,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      context: context,
      builder: (_) => SizedBox.expand(
        child: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.amberAccent,
                      offset: Offset(0, -2),
                    ),
                  ],
                ),
                child: const Text('data'),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 28,
          backgroundColor: Color(0xFFE5E5EA),
          child: Text(
            'В',
            style: TextStyle(
              color: Color(0xFF1C1C1E),
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(width: 12),

        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Виктория',
                style: TextStyle(
                  color: Color(0xFF1C1C1E),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Перейти в профиль',
                style: TextStyle(color: Color(0xFF8E8E93), fontSize: 14),
              ),
            ],
          ),
        ),

        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chat_bubble_outline,
                color: Color(0xFF1C1C1E),
                size: 26,
              ),
            ),
            Positioned(
              right: 6,
              top: 6,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Color(0xFFFF3B30),
                  shape: BoxShape.circle,
                ),
                constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
                child: const Text(
                  '7',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),

        IconButton(
          onPressed: () {
            showMenu(context);
          },
          icon: const Icon(Icons.menu, color: Color(0xFF1C1C1E), size: 26),
        ),
      ],
    );
  }
}
