import 'package:flutter/material.dart';

class BasicAppBar extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {


  return Scaffold(

    appBar: AppBar(

      backgroundColor: Colors.redAccent,
      leading: Icon(Icons.account_circle),
      title: Text("Account Circle"),
      actions: <Widget>[

          IconButton(

              icon: Icon(Icons.add_alarm),
            
          ),
          IconButton(
              icon: Icon(Icons.add_box),
              onPressed: (){},
          )
      ],
      
    ),
 
 body: Center(
           child: Text("Welcome Page") ,
              
       ),
 

  ); 


  }
  
}


