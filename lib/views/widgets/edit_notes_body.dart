import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_textfiled.dart';
import 'package:notes_app/views/widgets/edit_note_colors_list.dart';

class EditNotesBody extends StatefulWidget {
  const EditNotesBody({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditNotesBody> createState() => _EditNotesBodyState();
}

class _EditNotesBodyState extends State<EditNotesBody> {
  String? title, content;
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
            CustomAppBar(
              title: 'Edit Note',
              icon: const Icon(
                Icons.check,
                size: 30,
                color: Colors.tealAccent,
              ),
              fun: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = content ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 24,
            ),
            CustomStyledTextField(
              labelText: widget.note.title,
              onchanged: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 24,
            ),
            CustomStyledTextField(
              labelText: widget.note.subtitle,
              maxLines: 6,
              onchanged: (value) {
                content = value;
              },
            ),
            const SizedBox(
              height: 24,
            ),
            EditNoteColorsList(
              note: widget.note,
            ),
          ],
        ),
      ),
    );
  }
}
