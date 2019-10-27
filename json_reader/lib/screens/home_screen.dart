import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class HomePage extends StatefulWidget{

  @override
  _HomePageState createState()=> _HomePageState();
}


class _HomePageState extends State<HomePage>{

  Future<List<Users>> _getUsers() async{

    var data = await http.get("http://www.json-generator.com/api/json/get/cestrQUpki?indent=2");
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
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context,index){

                  return ListTile(
                    title: Text(snapshot.data[index].name),
                  );
                }
              );
            else return Container(child: Center(child: Text("Loading...."),),);
          }


        ),
      );


      var _homescreen = Scaffold(

        appBar: _appBar,
        body: _body,

      );

      return _homescreen;

  }

}

class Users{

   String picture;
   String about;
   String name;
   String gender;
   String age;
   String email;
   String phone;

   Users(this.picture,this.about,this.name,this.gender,this.age,this.email,this.phone);

    
  }