import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/search_icon.dart';

class NotesViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [CustomAppBar()],
        ),
      ),
    );
  }
}
