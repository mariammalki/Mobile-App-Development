import 'package:flutter/material.dart';
import '../components/note_item.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  List<Map<String, dynamic>> notes = [
    {'id': '1', 'content': 'Première note'},
    {'id': '2', 'content': 'Deuxième note'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Notes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Ajouter une nouvelle note
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return NoteItem(
            note: notes[index],
            onEdit: () {
              // Éditer la note
            },
            onDelete: () {
              setState(() {
                notes.removeAt(index);
              });
            },
          );
        },
      ),
    );
  }
}