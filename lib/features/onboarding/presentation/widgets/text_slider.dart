import 'package:clothes_shop_app/features/onboarding/presentation/controller/page_dots_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_metrics.dart';
import '../../domain/entities/text_slider_entity.dart';

class TextSlider extends ConsumerWidget {
  const TextSlider({super.key, required this.items});
  final List<TextSliderEntity> items;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(pageDotsControllerProvider);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(items.length, (index) {
            final isSelected = currentIndex == index;
            return AnimatedContainer(
              duration: kThemeAnimationDuration * 2.2,
              height: 9,
              width: 9,
              margin: const EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
            );
          }),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 150,
          child: PageView.builder(
            onPageChanged: (value) =>
                ref.read(pageDotsControllerProvider.notifier).set(value),

            itemCount: items.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: AppDimens.wrapSpacing,
                ),
                child: Column(
                  children: [
                    Text(
                      items[index].title,
                      style: const TextStyle(
                        fontSize: AppTextSize.size20,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: AppDimens.spacingM),
                    Text(
                      items[index].text,
                      style: const TextStyle(fontSize: AppTextSize.size16),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
