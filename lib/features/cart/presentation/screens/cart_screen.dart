import 'package:clothes_shop_app/features/cart/domain/entities/cart_item.dart';
import 'package:clothes_shop_app/features/cart/presentation/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/theme/app_metrics.dart';

import '../../../../shared/presentation/widgets/products_slider.dart';
import '../../../tabs/controller/tabs_controller.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(cartProvider);

    return Column(
      children: [
        items.isEmpty ? const EmptyCart() : CartItemsList(items: items),
        const ProductsSlider(title: 'Вы смотрели'),
      ],
    );
  }
}

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key, required this.items});
  final List<CartItem> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(items.length, (int index) {
        return Text(items[index].name);
      }),
    );
  }
}

class EmptyCart extends ConsumerWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.wrapSpacing),
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
        ],
      ),
    );
  }
}
