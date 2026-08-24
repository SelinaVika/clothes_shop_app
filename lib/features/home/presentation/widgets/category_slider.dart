import 'package:flutter/material.dart';

import '../../../../core/theme/app_metrics.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../shared/presentation/widgets/section_title.dart';
import '../../../../shared/router/app_router.dart';

class CategorySlider extends StatelessWidget {
  const CategorySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.wrapSpacing,
          ),
          child: SectionTitle(
            title: 'Категории',
            onSeeAllTap: () => const CategoriesRoute().push(context),
          ),
        ),
        SizedBox(
          height: 50,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.wrapSpacing,
            ),
            scrollDirection: Axis.horizontal,
            itemExtent: 170,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEBECF1),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: Assets.images.img0.provider(),
                        backgroundColor: const Color.fromARGB(255, 167, 2, 2),
                        radius: 18,
                      ),
                      const SizedBox(width: 4),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dresses',
                            style: TextStyle(
                              fontWeight: FontWeight(500),
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'From 19.99',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 110, 110, 110),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
