import 'package:flutter/material.dart';

class CustomStyledTextField extends StatelessWidget {
  final String labelText;
  final int maxLines;
  final Function(String?)? onsaved;
  final Function(String)? onchanged;

  CustomStyledTextField({
    required this.labelText,
    this.maxLines = 1,
    this.onsaved,
    this.onchanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchanged,
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
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Colors.red), // Red border when there is an error
          borderRadius: BorderRadius.circular(12),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color:
                  Colors.red), // Red border when focused and there is an error
          borderRadius: BorderRadius.circular(12),
        ),
        fillColor: Colors.black54,
        filled: true,
      ),
    );
  }
}
