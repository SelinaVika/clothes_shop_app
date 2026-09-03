import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../shared/router/app_router.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  void showMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF2F2F7),
              borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
            ),
            child: SafeArea(
              top: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 12),
                  Container(
                    width: 40,
                    height: 5,
                    decoration: BoxDecoration(
                      color: const Color(0xFFC7C7CC),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  const SizedBox(height: 20),

                  _MenuItem(
                    icon: Icons.settings_outlined,
                    title: 'Настройки',
                    onTap: () => const SettingsRoute().push(context),
                  ),

                  _MenuItem(
                    icon: Icons.help_outline_rounded,
                    title: 'Помощь',
                    onTap: () => Navigator.pop(context),
                  ),
                  _MenuItem(
                    icon: Icons.logout_rounded,
                    title: 'Выйти',
                    isDestructive: true,
                    onTap: () => Navigator.pop(context),
                  ),

                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        );
      },
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
              onPressed: () => const NotificationsRoute().push(context),
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
          onPressed: () => showMenu(context),
          icon: const Icon(Icons.menu, color: Color(0xFF1C1C1E), size: 26),
        ),
      ],
    );
  }
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({
    required this.icon,
    required this.title,
    required this.onTap,
    this.isDestructive = false,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool isDestructive;

  @override
  Widget build(BuildContext context) {
    final color = isDestructive
        ? const Color(0xFFFF3B30)
        : const Color(0xFF1C1C1E);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          child: Row(
            children: [
              Icon(icon, color: color, size: 24),
              const SizedBox(width: 16),
              Text(
                title,
                style: TextStyle(
                  color: color,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
