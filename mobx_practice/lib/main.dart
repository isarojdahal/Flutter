import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(

    debugShowCheckedModeBanner: false,
    home:HomePage()


  );


  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _counter = Counter();


  @override
  Widget build(BuildContext context) {
  return Scaffold
   (
     body:Center
     (
       child: Observer(builder: (_)=>Text("${_counter}") ,),
    ),

    floatingActionButton: FloatingActionButton(
          onPressed: (){_counter++;},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
    

    
    );
  }
}

