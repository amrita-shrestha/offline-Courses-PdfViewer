import 'package:flutter/material.dart';

import 'package:offline_courses/Models/notes_Info.dart';
import 'package:offline_courses/commonWidgets/pdfreader.dart';

class SingleTile extends StatelessWidget {
  SingleTile({
    required this.noteData,
  });

  final Notes noteData;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
        onTap: () async {
          await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      PDFreader(pdfpath: noteData.pdf)));
        },
        child: Card(
            child: Container(
                height: 95,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    padding: EdgeInsets.all(2),
                    child: Container(
                      width: width * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5.0),
                            bottomLeft: Radius.circular(5.0),
                            topLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0)),
                      ),
                      padding: EdgeInsets.all(2),
                      child: Image.asset(
                        noteData.images,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FittedBox(
                    child: Container(
                        width: width * 0.60,
                        child: RichText(
                          text: TextSpan(
                            text: '',
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 14),
                            children: <TextSpan>[
                              TextSpan(
                                  text: noteData.name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14)),
                            ],
                          ),
                        )),
                  )
                ]))));
  }
}
