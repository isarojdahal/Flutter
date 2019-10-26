import 'package:flutter/material.dart';
import 'pages/homescreen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Calc',
      home : HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        
      ),


    );
  }
}