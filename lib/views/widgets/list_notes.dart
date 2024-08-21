import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class ListNotes extends StatelessWidget {
  const ListNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: NoteItem(),
        );
      },
    );
  }
}
