import 'package:clothes_shop_app/core/theme/app_metrics.dart';
import 'package:clothes_shop_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class BannersSlider extends StatelessWidget {
  const BannersSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.22,
      child: PageView.builder(
        clipBehavior: Clip.none,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: AppDimens.wrapSpacing,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 144, 162, 243),
                      Color.fromARGB(255, 53, 75, 122),
                      Color.fromARGB(255, 8, 13, 92),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Enjoy up to 40% off\nin our special sale!',

                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Подробнее'),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Assets.images.man.image(width: 165),
              ),
            ],
          );
        },
      ),
    );
  }
}
