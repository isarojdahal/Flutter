import 'package:flutter/material.dart';
import 'pages/homepage_screen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{

@override
  Widget build(BuildContext context) {

    var _materialApp = MaterialApp(

      title: "My List Builder App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
    return _materialApp;
  }


}