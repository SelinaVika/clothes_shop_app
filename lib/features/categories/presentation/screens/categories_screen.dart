import 'package:flutter/material.dart';
import '../../../../core/theme/app_metrics.dart';
import '../../../../shared/presentation/widgets/search_on_page.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SearchOnPage(),
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
