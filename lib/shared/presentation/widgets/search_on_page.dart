import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features/home/presentation/widgets/search.dart';

class SearchOnPage extends StatelessWidget {
  const SearchOnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: context.pop,
          icon: const Icon(Icons.arrow_back, size: 20),
          color: const Color(0xFF1A1A1A),
        ),
        const Expanded(child: Search()),
      ],
    );
  }
}
