import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 235, 236, 241),
              borderRadius: BorderRadius.circular(20),
            ),

            child: const TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Color.fromARGB(255, 103, 103, 105)),
                hintText: 'Поиск...',
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
              ),
            ),
          ),
        ),
        // const IconBtn(icon: Icons.filter_list),
      ],
    );
  }
}
