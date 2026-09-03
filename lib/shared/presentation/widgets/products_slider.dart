import 'package:flutter/material.dart';

import '../../../core/theme/app_metrics.dart';
import 'product_item.dart';
import 'section_title.dart';

class ProductsSlider extends StatelessWidget {
  const ProductsSlider({super.key, this.title, this.onSeeAllTap});

  final String? title;
  final VoidCallback? onSeeAllTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.wrapSpacing,
            ),
            child: SectionTitle(title: title!, onSeeAllTap: onSeeAllTap),
          ),
        LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: 330,
              child: ListView.builder(
                padding: const EdgeInsets.only(
                  bottom: 10,
                  left: AppDimens.wrapSpacing,
                  right: AppDimens.wrapSpacing,
                ),
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
