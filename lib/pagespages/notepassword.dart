import 'package:flutter/material.dart';

class NoteWidget extends StatelessWidget {
  final String title;
  
  final void Function() edit;
  final void Function() delete;


  const NoteWidget({
    required this.title,
    required this.edit,
    required this.delete
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Center(
        child: Text(title)
      ),
      leading: Tooltip(
        message: 'Edit note',
        child: FlatButton(
          child: Icon(Icons.edit, color: Color(0xFF1C4617)),
          onPressed: edit
        )
      ),
      trailing: Tooltip(
        message: 'Delete note',
        child: FlatButton(
          child: Icon(Icons.delete, color: Color(0xFF9C1E44)),
          onPressed: delete
        )
      )
    );
  }
}