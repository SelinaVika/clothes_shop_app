import 'package:flutter/material.dart';

import '../../../../core/theme/app_metrics.dart';
import '../../../../shared/presentation/widgets/custom_icon_btn.dart';
import '../../../../shared/presentation/widgets/product_item.dart';
import '../../../home/presentation/widgets/search.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.wrapSpacing,
          ),
          child: Row(
            children: [
              const Expanded(child: Search()),
              CustomIconBtn(icon: Icons.filter_list_alt, onTap: () {}),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              primary: true,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 360,
                crossAxisSpacing: 10,
                mainAxisSpacing: 14,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ProductItem(index: index);
              },
            ),
          ),
        ),
      ],
    );
  }
}
