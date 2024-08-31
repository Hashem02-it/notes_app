import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 24, left: 16, top: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xffFFCC80),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutetr tips',
              style: TextStyle(fontSize: 28, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 15),
              child: Text(
                'build ypur career with hashem',
                style: TextStyle(
                    fontSize: 15, color: Colors.black.withOpacity(0.5)),
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
              'may21, 2022',
              style:
                  TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.5)),
            ),
          ),
        ],
      ),
    );
  }
}
