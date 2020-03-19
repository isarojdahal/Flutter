
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
 
 @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  bool _isLoading = true;
  PDFDocument document;

  @override

  void initState()
  {
      super.initState();
      loadDocument();
  }

  loadDocument() async{

    document = await PDFDocument.fromURL('http://www.africau.edu/images/default/sample.pdf');
    setState(() {
      _isLoading = false;
    });
  }
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
          title: const Text('PDF Viewer'),
        ),
        body: Center(
            child: _isLoading
                ? Center(child: CircularProgressIndicator())
                : PDFViewer(document: document)),
      ),
      
      debugShowCheckedModeBanner: false,);
  }

}