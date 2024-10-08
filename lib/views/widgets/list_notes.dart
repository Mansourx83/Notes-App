import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class ListNotes extends StatelessWidget {
  const ListNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: NoteItem(),
              );
            },
          ),
        );
      },
    );
  }
}
