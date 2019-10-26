import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key key}):super(key:key);

@override
State<StatefulWidget> createState()=>_HomePageState();

}
class _HomePageState extends State<HomePage>{

  var _item;
  var _atTop;
  ScrollController _scrollController;
  //var _screenWidth;
     
  @override
  void initState()
  {
       super.initState();
       _item = 10;
       _atTop = true;
      _scrollController = ScrollController();
    //  _screenWidth = MediaQuery.of(context).size.height;
  }



  @override
  Widget build(BuildContext context) {

        var _appbar = AppBar(
            title:Text("List Viewer"),
            backgroundColor: Colors.pink,
            actions: <Widget>[
              Builder(
                builder: (context)=>IconButton(
                  icon: Icon(Icons.account_circle),
                  iconSize: 34.0,
                  color: Colors.black,
                  onPressed: ()=>_showSnackBar(context, "Account icon clicked"),
              )),
            ],

          );

 

        var _body = ListView.builder(
                          controller: _scrollController,
                          itemCount: _item+1,
                          itemBuilder: (context,index){

                            final widgetItem  = (index==_item)?
                            
                            //At the end of posts
                            Row(children: <Widget>[

                               Center(
                                      child: 
                                           RaisedButton(
                                            onPressed:(){setState(() {_item+= 10;});},
                                            elevation: 4.0,
                                            color:Colors.deepPurple,
                                            child: Text("Load More."),),
                        
                              ),],)

                              
                             :
                            _makePost();
                            //Makes post if not end 
                          
                          return widgetItem;}

                      );
                   
        
        var homepage = Scaffold(

          appBar: _appbar,
          body:_body,
          floatingActionButton: Visibility(
                    
                    child: FloatingActionButton(

                        backgroundColor: Colors.grey,
                        child: IconButton(icon: Icon(Icons.arrow_upward),
                                          onPressed:(){
                                            _scrollController.animateTo(_scrollController.position.minScrollExtent,
                                            duration: Duration(milliseconds: 1000), curve: Curves.easeIn);
                                            
                                            _atTop = false;}

            ,
                        ),
                      ),
                  visible : (_atTop)?false:true
          ),
        );


  return homepage;

  }

  Widget _showSnackBar(BuildContext context, String text)
  {
    var _snackbar = SnackBar(
      content:Text(text),
      
    );

    Scaffold.of(context).showSnackBar(_snackbar);
    return _snackbar;
  }

  Widget _makePost ()
  {
    print("makepost method called");
      return  Column(children: <Widget>[ 
                                _makeListTile(),
                                Image.network("https://avatars0.githubusercontent.com/u/30316193?s=460&v=4"),
                                _makeButtons(),
                                Divider()
                              ]);
  }

  Widget _makeListTile()
  {
    var _listTile = ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.supervised_user_circle),
                    ),
                    title: Text("List titles"),
                    subtitle: Container(                      
                      child: Text("This is subtitle text."),
                      
                    ),
                    trailing: Text("This is trailing text."),
    );

    return _listTile;
  }

  Widget _makeButtons()
  {
    var _buttons = Center(
                      child : Row(

                      children: <Widget>[
                        FlatButton(child: Text("Haha"),onPressed: (){},),
                        FlatButton(child: Text("Comment"),onPressed: (){},),
                        IconButton(alignment: Alignment.bottomRight,icon: Icon(Icons.share),iconSize: 25.0,onPressed: (){},)
                      ],
                    ));

    return _buttons;
  }

}