import 'package:flutter/material.dart';

import '../widgets/notification_item.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

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
          'Уведомления',
          style: TextStyle(
            color: Color(0xFF1C1C1E),
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            NotificationItem(
              title: 'Товары в пункте выдачи',
              time: '20:00',
              textSms:
                  'На вашем устройстве или в расширении браузера настроено соединение через прокси-сервер. Он недоступен или настройки неверны.',
              date: '25 августа',
            ),
            NotificationItem(
              title: 'Товары в пункте выдачи',
              time: '20:00',
              textSms:
                  'На вашем устройстве или в расширении браузера настроено соединение через прокси-сервер. Он недоступен или настройки неверны.',
              date: '25 августа',
            ),
            NotificationItem(
              title: 'Товары в пункте выдачи',
              time: '20:00',
              textSms:
                  'На вашем устройстве или в расширении браузера настроено соединение через прокси-сервер. Он недоступен или настройки неверны.',
              date: '25 августа',
            ),
          ],
        ),
      ),
    );
  }
}
