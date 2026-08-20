import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_metrics.dart';
import '../../domain/entities/text_slider_entity.dart';
import '../widgets/custom_gradient.dart' show CustomGradient;
import '../widgets/images_slider.dart' show ImagesSlider;
import '../widgets/text_slider.dart';

final List<TextSliderEntity> items = [
  TextSliderEntity(
    title: 'Start Finding Your Version \nThe Best Fashion Style',
    text:
        'Your appearance shows your quality so give your best for your best fashon',
  ),
  TextSliderEntity(
    title: 'Version \nThe Best Fashion Style',
    text: 'Your  best fashon',
  ),
  TextSliderEntity(
    title: 'Start Findingion \nThe Best Fashion Style',
    text: ' fashon',
  ),
];

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -50,
            child: Transform.rotate(
              angle: -pi / 16,
              child: Row(
                children: [
                  ImagesSlider(),
                  ImagesSlider(isReverse: true),
                  ImagesSlider(),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                const Expanded(child: CustomGradient()),
                Container(
                  padding: const EdgeInsets.all(AppDimens.wrapSpacing),
                  color: Colors.white,
                  child: Column(
                    children: [
                      TextSlider(items: items),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => context.go('/tabs'),

                          child: const Text(
                            'Продолжить',
                            style: TextStyle(fontSize: AppTextSize.size16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
