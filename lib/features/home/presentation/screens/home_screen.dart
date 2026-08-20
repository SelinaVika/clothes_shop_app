import 'package:flutter/material.dart';

// import '../../../../shared/presentation/widgets/icon_btn.dart';
import '../../../../core/theme/app_metrics.dart';
import '../../../../shared/presentation/widgets/custom_icon_btn.dart';
import '../widgets/banners_slider.dart';
import '../widgets/category_slider.dart';
import '../widgets/main_appbar.dart';
import '../widgets/popular_product_list.dart';
import '../widgets/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const MainAppbar(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppDimens.blocksSpacing,
              horizontal: AppDimens.wrapSpacing,
            ),
            child: Row(
              children: [
                const Expanded(child: Search()),
                CustomIconBtn(icon: Icons.filter_list_alt, onTap: () {}),
              ],
            ),
          ),

          const BannersSlider(),
          const CategorySlider(),
          const PopularProductList(),
        ],
      ),
    );
  }
}
