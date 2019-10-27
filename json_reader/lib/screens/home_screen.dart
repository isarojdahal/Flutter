import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'profile_screen.dart';
import 'package:json_reader/models/users_model.dart';

class HomePage extends StatefulWidget{

  @override
  _HomePageState createState()=> _HomePageState();
}


class _HomePageState extends State<HomePage>{ 

  Future<List<Users>> _getUsers() async{


    print("inside async method");
    var data = await http.get("http://www.json-generator.com/api/json/get/cpBpbFVxqq?indent=2");
    var jsonData = json.decode(data.body);

    List<Users> usersList = [];

    for (var val in jsonData)
    {
      Users user = Users(val["picture"], val["about"], val["name"], val["gender"], val["age"], val["email"], val["phone"]);
      usersList.add(user);
      print(user.name);
    }

    return usersList;

  }

   @override
  Widget build(BuildContext context) {
    
      var _appBar = AppBar(
        title: Text("JSON READER"),
      );
      var _body = Container(
        child: FutureBuilder(
          future: _getUsers(),
          builder: (context,snapshot){

            if(snapshot.data != null)
            {
              return ListView.builder(
                              itemCount: snapshot.data.length,
                              itemBuilder: (context,index){
                            
                              if((index+1)==snapshot.data.length)
                              {
                                return RaisedButton(child: Text("Load More.."),onPressed: (){
                                  
                                  _getUsers();
                                  
                                  var _snackbar = SnackBar(
                                    content: Text("Loading Now..."),
                                    duration: Duration(seconds: 1),
                                    action: SnackBarAction(
                                      label: "Done",
                                      onPressed: (){},
                                    ),

                                  );
                                  Scaffold.of(context).showSnackBar(_snackbar);

                                },);
                              }
                              else 
                              {

                                return Column(
                                 
                                  children: <Widget>[

                                    ListTile(
                                            leading: CircleAvatar(
                                            child: Image.network(snapshot.data[index].picture),
                                            ),
                                            subtitle: Text(snapshot.data[index].email),
                                            title: Text(snapshot.data[index].name),
                                            isThreeLine: true,
                                            onTap: ()=>Navigator.push(context,MaterialPageRoute(builder:(context)=>ProfileScreen(snapshot.data[index]))),
                                        ),
                                    Container(
                                      height: 300.0,
                                      width: 300.0,
                                      child: Image.network(snapshot.data[index].picture),
                                      color: Colors.blueGrey,
                                    ),

                                    Divider(),

                                    Row(children: <Widget>[
                                      
                                    
                                      IconButton(
                                        tooltip: "HAHA",
                                        icon: Icon(Icons.link),
                                        iconSize: 30.0,
                                        onPressed: (){},
                                        padding: EdgeInsets.only(right: 50.0,left:100.0),
                                      ),

                                        IconButton(
                                        icon: Icon(Icons.comment),
                                        iconSize: 30.0,
                                        onPressed: (){},
                                        padding: EdgeInsets.only(right: 50.0),
                                      ),
                                        IconButton(
                                        icon: Icon(Icons.share),
                                        iconSize: 30.0,
                                        onPressed: (){},
                                         padding: EdgeInsets.only(right: 50.0),
                                      )
                                    ],)


                                  ],
                                );

                                   
                              }

                            }); 

              }
              return Container(child: Center(child: Text("Loading...."),),);

          }


        ),);

      var _homescreen = Scaffold(

        appBar: _appBar,
        body: _body,
         bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );

 

      return _homescreen;

  }
  

 var _selectedIndex = 0;

     
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}

