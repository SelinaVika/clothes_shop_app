import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_metrics.dart';
import '../../../../shared/presentation/widgets/products_slider.dart';
import '../../../tabs/controller/tabs_controller.dart';
import '../widgets/action_card.dart';
import '../widgets/header.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

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
              const Header(),
              const SizedBox(height: 20),
              buildAction(ref),
            ],
          ),
        ),
        const ProductsSlider(title: 'Вы смотрели'),
      ],
    );
  }

  Row buildAction(WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              ref.read(tabsControllerProvider.notifier).set(1);
            },
            child: const ActionCard(
              icon: Icons.favorite_border,
              title: 'Избранное',
              subtitle: '203 товара',
            ),
          ),
        ),
        const SizedBox(width: 10),

        const Expanded(
          child: ActionCard(
            icon: Icons.shopping_bag_outlined,
            title: 'Заказы ',
            subtitle: 'Нет заказов',
          ),
        ),
        const SizedBox(width: 10),

        const Expanded(
          child: ActionCard(
            icon: Icons.star_border,
            title: 'Ждут отзывы',
            subtitle: '16 товаров',
          ),
        ),
      ],
    );
  }
}
