import 'package:flutter/material.dart';

import '../widgets/navigation_settings.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
          color: const Color(0xFF1C1C1E),
        ),
        title: const Text(
          'Настройки',
          style: TextStyle(
            color: Color(0xFF1C1C1E),
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFE5E5EA),
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'В',
                  style: TextStyle(
                    color: Color(0xFF8E8E93),
                    fontSize: 42,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Сменить фото',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              NavigationSettings(title: 'Язык и валюта', onTap: () {}),
              NavigationSettings(title: 'Способы оплаты', onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
