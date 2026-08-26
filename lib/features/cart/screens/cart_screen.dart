import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_metrics.dart';
import '../../../../shared/presentation/widgets/product_item.dart';
import '../../../../shared/presentation/widgets/section_title.dart';
import '../../tabs/controller/tabs_controller.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.wrapSpacing,
          ),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Text(
                'Корзина пуста',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1A1A1A),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Воспользуйтесь поиском, чтобы найти всё,\nчто нужно',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(tabsControllerProvider.notifier).set(0);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                  ),
                  child: const Text(
                    'Начать покупки',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 40),

              const SectionTitle(title: 'Вы смотрели'),
            ],
          ),
        ),

        LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: 330,
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 10),
                itemExtent: constraints.maxWidth / 2.5,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: ProductItem(index: index),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
