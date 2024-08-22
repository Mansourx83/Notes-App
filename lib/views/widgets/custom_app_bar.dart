import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/icon_box.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        IconBox(
          icon: icon,
          function: () {},
        ),
      ],
    );
  }
}
