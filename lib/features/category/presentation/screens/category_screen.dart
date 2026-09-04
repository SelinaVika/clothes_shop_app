import 'package:clothes_shop_app/features/category/presentation/widgets/category_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_metrics.dart';
import '../../../../shared/presentation/widgets/search_on_page.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, this.title = 'Одежда'});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.wrapSpacing,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const SearchOnPage(),
                  const SizedBox(height: AppDimens.blocksSpacing),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: AppDimens.blocksSpacing),
                  SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppDimens.blocksSpacing),
            SizedBox(
              height: 300,
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.wrapSpacing,
                ),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: 16,
                itemBuilder: (context, index) {
                  return CategoryCard(title: title);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
