import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:task/theme/style.dart';
import '../../Model/document_model.dart';
class ReaderScreen extends StatefulWidget {
   ReaderScreen(this.doc,{super.key});
  Document doc;

  @override
  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu),
        ),
        title: Text(widget.doc.doc_title!),
      ),
      body: Container(
        child: SfPdfViewer.network(widget.doc.doc_url!),
      ),
    );
  }
}
