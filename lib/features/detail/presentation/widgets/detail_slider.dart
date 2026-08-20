import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class DetailSlider extends StatefulWidget {
  const DetailSlider({super.key});

  @override
  State<DetailSlider> createState() => _DetailSliderState();
}

class _DetailSliderState extends State<DetailSlider> {
  final List<AssetGenImage> images = [
    Assets.images.img0,
    Assets.images.img1,
    Assets.images.img2,
    Assets.images.img3,
    Assets.images.img4,
  ];

  late final PageController _scrollController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = PageController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onThumbnailTap(int index) {
    setState(() => selectedIndex = index);

    _scrollController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: AspectRatio(
            aspectRatio: 1,
            child: PageView.builder(
              controller: _scrollController,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return SizedBox(child: images[index].image(fit: BoxFit.cover));
              },
            ),
          ),
        ),
        const SizedBox(height: 16),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(images.length, (index) {
              final isSelected = selectedIndex == index;

              return GestureDetector(
                onTap: () {
                  _onThumbnailTap(index);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),

                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: isSelected
                          ? const Color(0xFFE67E22)
                          : Colors.transparent,
                      width: 2,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: images[index].image(
                      width: 48,
                      height: 48,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
