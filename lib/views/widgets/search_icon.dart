import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 45,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.08),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
          child: Icon(
            Icons.search_sharp,
            size: 30,
          ),
        ),
      ),
    );
  }
}
