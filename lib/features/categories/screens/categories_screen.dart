import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_metrics.dart';
import '../../home/presentation/widgets/search.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: context.pop,
                  icon: const Icon(Icons.arrow_back, size: 20),
                  color: const Color(0xFF1A1A1A),
                ),
                const Expanded(child: Search()),
              ],
            ),
            const SizedBox(height: AppDimens.blocksSpacing),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.wrapSpacing,
              ),
              child: GridView.builder(
                shrinkWrap: true,

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: const CategoryItem(title: 'Женская одежда'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
