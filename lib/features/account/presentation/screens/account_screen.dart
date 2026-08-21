import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_metrics.dart';
import '../../../../shared/presentation/widgets/product_item.dart';
import '../../../../shared/presentation/widgets/section_title.dart';
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
              const SizedBox(height: AppDimens.blocksSpacing),
              buildAction(ref),

              const SectionTitle(title: 'Вы смотрели'),
            ],
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: 290,
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 10),
                itemExtent: constraints.maxWidth / 2.5,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDimens.betweenSliderElements,
                    ),
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
        const SizedBox(width: AppDimens.betweenBlocksRow),

        const Expanded(
          child: ActionCard(
            icon: Icons.shopping_bag_outlined,
            title: 'Покупки',
            subtitle: 'Заказать снова',
          ),
        ),
        const SizedBox(width: AppDimens.betweenBlocksRow),

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
