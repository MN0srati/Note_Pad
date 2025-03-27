import 'package:flutter/material.dart';
import 'package:notepad/screens/widget/note_view.dart';
import '../../models/realmdata/note_model.dart';

class NoteCard extends StatelessWidget {
 const NoteCard( {super.key,required this.note, required this.onNoteDeleted});



  final Notes note;
  final Function(Notes) onNoteDeleted;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NoteView(
                note: note, onNoteDeleted: onNoteDeleted)));
      },
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(
          10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: note.isRtl! ? Alignment.centerRight : Alignment.centerLeft ,
              child: Text(
                note.title,
                style: const TextStyle(fontSize: 20),
                textDirection: note.isRtl! ? TextDirection.rtl : TextDirection.ltr,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: note.isRtl! ? Alignment.centerRight : Alignment.centerLeft ,
              child: Text(
                note.body,
                style: const TextStyle(fontSize: 20),
                maxLines: 2,
                textDirection: note.isRtl! ? TextDirection.rtl : TextDirection.ltr,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
