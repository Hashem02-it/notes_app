import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/cutom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: CustomNoteItem(),
      );
    });
  }
}
