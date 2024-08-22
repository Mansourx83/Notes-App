import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/icon_box.dart';

class EditNotesBody extends StatelessWidget {
  const EditNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomAppBar(
              title: 'Edit Note',
              icon: Icon(
                Icons.check,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
