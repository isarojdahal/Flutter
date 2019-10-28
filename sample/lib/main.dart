import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      theme: ThemeData(

        primarySwatch: Colors.teal
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Text("My App"),
          actions: <Widget>[

            IconButton(
              icon: Icon(Icons.more_vert),
            )

          ],
        ),

        body: Center(

          child:Container(
            child:Text("Gagan pandey."))
            ),
      ),

    debugShowCheckedModeBanner: false,

    );
  }
}