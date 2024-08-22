import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_textfiled.dart';
import 'package:notes_app/views/widgets/icon_box.dart';

class EditNotesBody extends StatelessWidget {
  const EditNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomAppBar(
              title: 'Edit Note',
              icon: Icon(
                Icons.check,
                size: 30,
                color: Colors.tealAccent,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            CustomStyledTextField(
              labelText: 'Title',
            ),
            const SizedBox(
              height: 24,
            ),
            CustomStyledTextField(
              labelText: 'Content',
              maxLines: 6,
            ),
          ],
        ),
      ),
    );
  }
}
