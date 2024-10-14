import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

import 'package:notes_app/views/widgets/list_notes.dart';

class NotesViewBody extends StatefulWidget {
  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            CustomAppBar(
              title: 'Notes',
              icon: const Icon(
                Icons.search_sharp,
                size: 30,
                color: Colors.tealAccent,
              ),
              fun: () {},
            ),
            const Expanded(
              child: ListNotes(),
            ),
          ],
        ),
      ),
    );
  }
}
