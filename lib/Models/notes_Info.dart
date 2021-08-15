import 'package:flutter/foundation.dart';

class Notes {
  final name;
  final images;
  final pdf;

  Notes({
    @required this.name,
    @required this.images,
    @required this.pdf,
  });
}

class NotesCollection {
  static final collections = [
    Notes(
        name: 'Engineering Physics I',
        images: 'assets/pdfs/engineeringphysics.png',
        pdf: 'assets/pdfs/engineeringphysics.pdf'),
    Notes(
        name: 'Networking fundamentals',
        images: 'assets/pdfs/networking.jpeg',
        pdf: 'assets/pdfs/ComputerNetworks.pdf'),
    Notes(
        name: 'An Overview Of Artificial Intelligence(AI)',
        images: 'assets/pdfs/ai.jpg',
        pdf: 'assets/pdfs/ai.pdf'),
    Notes(
        name: 'Database Designs',
        images: 'assets/pdfs/database.jpg',
        pdf: 'assets/pdfs/database.pdf'),
    Notes(
        name: 'Engineering Mathematics -I',
        images: 'assets/pdfs/engineeringmathsI.jpg',
        pdf: 'assets/pdfs/engineeringmathsI.pdf'),
  ];
}
