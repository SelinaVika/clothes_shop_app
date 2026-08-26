import 'package:flutter/material.dart';

import '../../../../core/theme/app_metrics.dart';
import '../../../../gen/assets.gen.dart';

class MainAppbar extends StatelessWidget {
  const MainAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(
        horizontal: AppDimens.wrapSpacing,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: Assets.images.img0.provider(),
          ),
          const SizedBox(width: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Jopa',
                style: TextStyle(color: Color.fromARGB(255, 110, 110, 110)),
              ),
              Text(
                'Good Morning',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight(500)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
