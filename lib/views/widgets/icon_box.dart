import 'package:flutter/material.dart';

class IconBox extends StatelessWidget {
  const IconBox({super.key, required this.icon, required this.function});
  final Icon icon;
  final VoidCallback function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        height: 45,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.08),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
