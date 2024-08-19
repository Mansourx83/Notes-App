import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'My Notes',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        SearchIcon(),
      ],
    );
  }
}
