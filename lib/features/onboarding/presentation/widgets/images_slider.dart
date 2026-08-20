import 'package:clothes_shop_app/features/onboarding/presentation/controller/image_slider_controller.dart';
import 'package:clothes_shop_app/features/onboarding/presentation/providers/images_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImagesSlider extends ConsumerWidget {
  ImagesSlider({super.key, this.isReverse = false});

  final bool isReverse;
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(imagesProvider);
    final notifier = ref.watch(
      imageSliderControllerProvider(_controller).notifier,
    );
    final sizes = MediaQuery.sizeOf(context);

    return SizedBox(
      width: sizes.width * 0.5,
      height: sizes.height,
      child: ListView.builder(
        controller: notifier.scrollController,
        physics: const NeverScrollableScrollPhysics(),
        reverse: isReverse,
        itemCount: state.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: state[index].image(fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }
}
