import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{

@override
  Widget build(BuildContext context) {
    
      return MaterialApp(

        theme: ThemeData(
          primarySwatch: Colors.deepPurple
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      );
  }

}