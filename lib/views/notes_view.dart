import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.cyanAccent,
        // shape: CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
