import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Note {
  final int id;
  final String title;

  const Note({required this.id, this.title = ''});
}

abstract class DataBase {
  static final fileName = 'notes_database.db';
  static final tableName = 'notes_table';


  static Future<Database> database() async {
    return openDatabase(
      join(await getDatabasesPath(), fileName),
      onCreate: (db, version) {
        return db.execute(
          '''
            CREATE TABLE $tableName (
              id INTEGER PRIMARY KEY,
              title TEXT
            )
          '''.trim().replaceAll(RegExp('\s+'), '\s'),
        );
      },
      version: 1
    );
  }


  static Map<String, dynamic> toMap(Note note) {
    return {
      'id': note.id,
      'title': note.title
    };
  }
  static Note fromMap(Map<String, dynamic> note) {
    return Note(id: note['id'], title: note['title']);
  }


  static Future<List<Note>> notes() async {
    final Database data = await database();
    return (await data.query(tableName)).map(fromMap).toList();
  }


  static Future<void> addNote(Note note) async {
    final db = await database();
    await db.insert(
      tableName,
      toMap(note),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<void> editNote(Note note) async {
    final db = await database();
    await db.update(
      tableName,
      toMap(note),
      where: 'id = ?',
      whereArgs: [note.id]
    );
  }
 
  static Future<void> deleteNote(Note note) async {
    final db = await database();
    await db.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [note.id]
    );
  }
}