import 'package:flutter/material.dart';
import '../models/realmdata/note_model.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({super.key, required this.onNewNoteCreated});

  final Function(Notes) onNewNoteCreated;

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  final titleController = TextEditingController();
  final bodyController = TextEditingController();
  bool isRtl = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: const Center(
          child: Text("New Note"),
        ),
        actions: [

          TextButton(
            onPressed: () {
              if(isRtl){
                isRtl=false;
              }
              else{
                isRtl=true;
              }
              setState(() {});
            },
            style: TextButton.styleFrom(
              shape:const CircleBorder(),
              foregroundColor: Colors.black,
              backgroundColor: isRtl ? Colors.blue:Colors.white
            ),
            child: Text(isRtl ? "rtl":"ltr"),
          ),
          const SizedBox(width: 10,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
              controller: titleController,
              style: const TextStyle(fontSize: 24),

              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Title",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
                textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
                controller: bodyController,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                style: const TextStyle(fontSize: 18),
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: "Your Text")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (titleController.text.isEmpty) {
            return;
          }
          if (bodyController.text.isEmpty) {
            return;
          }

          final note = Notes(
            1,
            titleController.text,
            bodyController.text,
            isRtl: isRtl
          );
          widget.onNewNoteCreated(note);
          Navigator.of(context).pop();
        },
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: Colors.greenAccent,
        child: const Icon(
          Icons.save,
          color: Colors.black,
        ),
      ),
    );
  }
}
