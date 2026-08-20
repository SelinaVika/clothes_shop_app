import 'package:flutter/material.dart';

import '../../../core/theme/app_metrics.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    this.title = 'Category',
    this.onSeeAllTap,
    this.showSeeAll = true,
  });

  final String title;
  final VoidCallback? onSeeAllTap;
  final bool showSeeAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDimens.blocksSpacing),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1A1A1A),
                letterSpacing: -0.3,
                height: 1.2,
              ),
            ),
          ),
          if (showSeeAll)
            GestureDetector(
              onTap: onSeeAllTap,
              behavior: HitTestBehavior.opaque,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Смотреть все',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.deepOrange.shade600,
                      ),
                    ),
                    const SizedBox(width: 2),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 13,
                      color: Colors.deepOrange.shade600,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
