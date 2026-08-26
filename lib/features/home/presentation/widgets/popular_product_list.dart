import 'package:flutter/material.dart';

import '../../../../core/theme/app_metrics.dart';
import '../../../../shared/presentation/widgets/product_item.dart';
import '../../../../shared/presentation/widgets/section_title.dart';

class PopularProductList extends StatelessWidget {
  const PopularProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.wrapSpacing),
      child: Column(
        children: [
          const SectionTitle(title: 'Популярное'),
          const SizedBox(height: 12),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 355,
              crossAxisSpacing: 10,
              mainAxisSpacing: 14,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return ProductItem(index: index);
            },
          ),
        ],
      ),
    );
  }
}
