import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return EditNoteView();
          }),
        );
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 29, left: 16, top: 29),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(fontSize: 28, color: Colors.black),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 10, bottom: 15),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.5)),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    size: 30,
                    Icons.delete,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                style: TextStyle(
                    fontSize: 12, color: Colors.black.withOpacity(0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
