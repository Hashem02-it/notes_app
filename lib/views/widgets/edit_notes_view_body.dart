import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          )
        ],
      ),
    );
  }
}
