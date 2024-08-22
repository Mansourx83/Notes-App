import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

import 'package:notes_app/views/widgets/list_notes.dart';

class NotesViewBody extends StatelessWidget {
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
              title: 'Notes',
              icon: Icon(
                Icons.search_sharp,
                size: 30,
                color: Colors.tealAccent,
              ),
            ),
            Expanded(
              child: ListNotes(),
            ),
          ],
        ),
      ),
    );
  }
}
