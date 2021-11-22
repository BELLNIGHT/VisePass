import 'package:flutter/material.dart';
import 'package:flutter_application_1/lib/laugh/DataBase.dart';
import 'package:flutter_application_1/pagespages/notepassword.dart';


class NotesList extends StatefulWidget {
  @override
  _NotesListState createState() => _NotesListState();
}


class _NotesListState extends State<NotesList> {
  final _addingController = TextEditingController();
  final _editingController = TextEditingController();

  
  @override
  void dispose() {
    _addingController.dispose();
    _editingController.dispose();
    super.dispose();
  }


  void _addNote(Note note) {
    DataBase.addNote(note);
    setState(() {});
  }
  void _editNote(Note note) {
    DataBase.editNote(note);
    setState(() {});
  }
  void _deleteNote(Note note) {
    DataBase.deleteNote(note);
    setState(() {});
  }

  void _showAddingDialog() async {
    return await showDialog(
      context: context,
      builder: (_) => SimpleDialog(
        contentPadding: EdgeInsets.all(10),
        children: [
          TextField(
            controller: _addingController,
            autofocus: true,
            
            onSubmitted: (value) {
              _addNote(Note(title: value));
              _addingController.clear();
              Navigator.pop(context);
            }
          )
        ]
      )
    );
  }
  void _showEditingDialog(Note note) async {
    return await showDialog(
      context: context,
      builder: (_) => SimpleDialog(
        contentPadding: EdgeInsets.all(10),
        children: [
          TextField(
            
            controller: () {
             
              _editingController.text = note.title;
              return _editingController;
            }(),
            autofocus: true,
            onSubmitted: (value) {
              _editNote(Note(id: note.id, title: value));
              _editingController.clear();
              Navigator.pop(context);
            }
          )
        ]
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Notes',
          style: TextStyle(color: Color(0xFF5A9C7D))
        ),
        centerTitle: true
      ),

      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 32, color: Color(0xFFB66B90)),
        tooltip: 'Add new note',
        onPressed: () => _showAddingDialog()
      ),

      body: FutureBuilder(
        future: DataBase.notes(),
        builder: (_, snapshot) {
          
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator()
            );
          }

          final data = snapshot.data;

          
          if (data.length == 0) {
            return Center(
              child: Text('No notes',
                style: TextStyle(
                  color: Colors.grey, fontSize: 20
                )
              )
            );
          }

          return ListView.separated(
            
            padding: const EdgeInsets.all(10),
            
            itemCount: data.length,
            
            itemBuilder: (_, index) {
              
              final note = data[index];

              return NoteWidget(
                title: note.title,

                edit: () {
                  _showEditingDialog(note);
                },
                delete: () {
                  _deleteNote(note);
                }
              );
            },
            
            separatorBuilder: (_, index) => Divider()
          );
        }
      )
    );
  }
}