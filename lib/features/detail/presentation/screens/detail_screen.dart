import 'package:clothes_shop_app/features/detail/presentation/widgets/choice_color.dart';
import 'package:clothes_shop_app/features/detail/presentation/widgets/counter.dart';
import 'package:clothes_shop_app/features/detail/presentation/widgets/detal_header.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_metrics.dart';
import '../widgets/characts_list.dart';
import '../widgets/choice_size.dart';
import '../widgets/description.dart';
import '../widgets/detail_slider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.id});

  final int id;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String selectedSize = 'S'; // ← общее состояние
  String selectedColor = 'burgundy'; // вместо 'S'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.wrapSpacing,
            ),
            child: Column(
              children: [
                const DetalHeader(),
                const SizedBox(height: 10),
                const DetailSlider(),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildTitle,
                    const SizedBox(width: 16),
                    const Counter(),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CharactsList(
                      title: 'Select Size',
                      items: [
                        ChoiceSize(
                          label: 'S',
                          isSelected: selectedSize == 'S',
                          onTap: () => setState(() => selectedSize = 'S'),
                        ),
                        ChoiceSize(
                          label: 'M',
                          isSelected: selectedSize == 'M',
                          onTap: () => setState(() => selectedSize = 'M'),
                        ),
                        ChoiceSize(
                          label: 'L',
                          isSelected: selectedSize == 'L',
                          onTap: () => setState(() => selectedSize = 'L'),
                        ),
                      ],
                    ),
                    CharactsList(
                      title: 'Select Color',
                      items: [
                        ChoiceColor(
                          color: const Color(0xFF8B3A3A), // бордовый
                          isSelected: selectedColor == 'burgundy',
                          onTap: () =>
                              setState(() => selectedColor = 'burgundy'),
                        ),
                        ChoiceColor(
                          color: const Color(0xFFE08A3C), // оранжевый
                          isSelected: selectedColor == 'orange',
                          onTap: () => setState(() => selectedColor = 'orange'),
                        ),
                        ChoiceColor(
                          color: const Color(0xFF3B6FD9), // синий
                          isSelected: selectedColor == 'blue',
                          onTap: () => setState(() => selectedColor = 'blue'),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Description(),
                const SizedBox(height: 70),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded get buildTitle {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Faux Long Jacket',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              height: 1.2,
              color: Color(0xFF1A1A1A),
            ),
          ),
          SizedBox(height: 6),
          Text(
            'Classic Winter Jacket',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF6B6B6B),
            ),
          ),
        ],
      ),
    );
  }
}
