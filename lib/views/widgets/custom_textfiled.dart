import 'package:flutter/material.dart';

class CustomStyledTextField extends StatelessWidget {
  final String labelText;
  final int maxLines;
  final Function(String?)? onsaved;

  CustomStyledTextField({
    required this.labelText,
    this.maxLines = 1,
    this.onsaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
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
