import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

class PDFreader extends StatefulWidget {
  PDFreader({Key? key, required this.pdfpath})
      : super(
          key: key,
        );
  final String pdfpath;

  _PDFreaderState createState() => _PDFreaderState();
}

class _PDFreaderState extends State<PDFreader> {
  late PDFDocument _doc;
  late bool isloading;
  @override
  void initState() {
    super.initState();
    _initPdf();
  }

  _initPdf() async {
    setState(() {
      isloading = true;
    });
    final doc = await PDFDocument.fromAsset(widget.pdfpath);
    setState(() {
      _doc = doc;
      isloading = false;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                Icons.chevron_left,
                color: Colors.deepPurple,
              ),
              onPressed: () => Navigator.pop(context))),
      body: isloading
          ? Container(
              child: Center(
                child: Container(),
              ),
            )
          : PDFViewer(document: _doc),
    );
  }
}
