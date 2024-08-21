import 'package:flutter/material.dart';

class CustomStyledTextField extends StatelessWidget {
  final String labelText;
  final int maxLines;
  final Function(String)? onChanged;

  CustomStyledTextField({
    required this.labelText,
    this.onChanged,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      style: const TextStyle(
        color: Colors.tealAccent,
      ),
      maxLines: maxLines, // Allow multiple lines if specified
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.tealAccent,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.tealAccent),
          borderRadius: BorderRadius.circular(12),
        ),
        fillColor: Colors.black54,
        filled: true,
      ),
    );
  }
}
