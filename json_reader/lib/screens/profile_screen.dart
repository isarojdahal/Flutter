import 'package:flutter/material.dart';
import 'package:json_reader/models/users_model.dart';

class ProfileScreen extends StatelessWidget{

  final Users user;

  ProfileScreen(this.user);
  @override
  Widget build(BuildContext context) {
  
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title:Text(user.name),
      
      leading: IconButton(icon:Icon(Icons.arrow_back),
          onPressed:() => Navigator.pop(context, false),
        )
        
      ),
      
      body: Center(child:Text("hell")),),
      debugShowCheckedModeBanner: false,

  );
  }
}