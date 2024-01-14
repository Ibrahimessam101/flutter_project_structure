import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectstruc/components/drawer.dart';
import 'package:projectstruc/components/note_tile.dart';
import 'package:projectstruc/services/models/note.dart';
import 'package:projectstruc/utils/text_size.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final textController = TextEditingController();

  //create a note
  void createNote() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Create a note'),
        content: TextField(
          controller: TextEditingController(),
          decoration: const InputDecoration(
            hintText: 'Note',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }

  //read a note
  void readNotes() {}
  //update a note
  //delete a note

  @override
  Widget build(BuildContext context) {
    //note database

    //current notes

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNote,
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(Icons.add, color: Theme.of(context).colorScheme.inversePrimary),
      ),
      drawer: const MyDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              "Notes",
              textScaler: TextScaler.linear(ScaleSize.textScaler(context)),
              style: GoogleFonts.dmSerifText(
                fontWeight: FontWeight.bold,
                fontSize: 48,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return const NoteTile(
                  text: "notessssssssssssssssssssss",
                  onEditPressed: null,
                  onDeletePressed: null,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
