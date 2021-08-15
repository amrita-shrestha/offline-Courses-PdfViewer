import 'package:flutter/material.dart';
import 'package:offline_courses/Models/notes_Info.dart';
import 'package:offline_courses/commonWidgets/singleTile.dart';
import 'package:offline_courses/stylesGuides/color_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FeaturedCourses();
  }
}

class FeaturedCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Text(
            'Engineering Courses',
            style: TextStyle(color: Colors.deepPurple, fontSize: 18),
          ),
        ),
        backgroundColor: backgroundColor,
        body: ListView.builder(
            itemCount: NotesCollection.collections.length,
            itemBuilder: (context, index) {
              final listitem = NotesCollection.collections[index];
              return SingleTile(
                noteData: listitem,
              );
            }));
  }
}
