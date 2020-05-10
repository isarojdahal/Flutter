import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_a/transparent_image.dart';

void main() => runApp(_BottomTab());


class _BottomTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomTabState();

}

class _BottomTabState extends State<_BottomTab> with SingleTickerProviderStateMixin {

   static const  _TabPages = <Widget>[
    _tab1Widget(),

    Center(

      child:
        Text(
          'Another Tab'
        ),
    )
    
  ];

  static const _Tabs = <Tab>[

    Tab(
      icon: Icon(Icons.cloud),
      text: 'Clouds',
    ),

    Tab(
      icon:Icon(Icons.image),
      text: 'Images'
    )
  ];

    TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(
    length :_TabPages.length,
        vsync: this,

    );
  }

  void dispose() {

    _tabController.dispose();
    super.dispose();

  }


  @override
  Widget build(BuildContext context) {

  return MaterialApp(

  home: Scaffold(

    appBar: null,
    body: TabBarView(
        children: _TabPages,
      controller: _tabController,


    ),

    bottomNavigationBar: Material(

      color: Colors.blue,
      child: TabBar(

        tabs: _Tabs,
        controller: _tabController,
      ),
    ),
  ),

    debugShowCheckedModeBanner: false,
    );
  }


Widget _tab1Widget()
  {
    return Center(

        child: Container(

            width: 300.0,
            height: 400.0,
            color: Colors.green,

            child: Padding(

                padding: const EdgeInsets.all(12.0),

                child: Container(

                    padding: const EdgeInsets.all(4.0),
                    width:100.0,
                    height: 100.0,
                    color:Colors.white,


                    child:Container(
                        child: new Directionality(
                          textDirection: TextDirection.ltr,
                          child: Icon(
                            Icons.image,
                            size: 65.0,
                          ),
                        )

                    )
                )


            )


        ));
  }

}


//class MyApp2 extends StatelessWidget
//{
//  @override
//  Widget build(BuildContext context) {
//
//
//    return MaterialApp(
//
//      home: Scaffold(
//
//        body: Padding(
//            padding: const EdgeInsets.all(30.0),
//            child: Card(
//
//                child:FadeInImage.memoryNetwork(
//                  placeholder: kTransparentImage,
//                  image: 'https://github.com/flutter/website/blob/master/src/_includes/code/layout/lakes/images/lake.jpg?raw=true',
//                ),
//
//            ),
//          ),
//        ),
//
//
//
//      debugShowCheckedModeBanner: false
//
//
//
//    );
//  }

//}


//
//class MyyApp extends StatelessWidget
//{
//  @override
//
//  Widget build(BuildContext context) {
//
//    final _biggerFont = const TextStyle(fontSize: 20.0);
//
//    var contacts = const['Saroj Dahal',"Ram Sharma","Ramesh Rai",
//    "Saroj Dahal",'Ram Sharma',"Ramesh Rai",
//    "Saroj Dahal","Ram Sharma",'Ramesh Rai',
//    "Saroj Dahal","Ram Sharma","Ramesh Rai",
//    "Saroj Dahal",'Ram Sharma',"Ramesh Rai",
//    "Saroj Dahal","Ram Sharma","Ramesh Rai",
//    "Sita","Mita"];
//
//    _getRandomColor()
//    {
//      Random random = new Random();
//
//      switch(random.nextInt(5))
//      {
//        case 1:
//            return Colors.green;
//
//        case 2:
//          return Colors.red;
//
//        case 3:
//          return Colors.yellow;
//
//        case 4:
//          return Colors.black;
//
//        case 5:
//          return Colors.orange;
//
//        default:
//          return Colors.black54;
//      }
//      return Color;
//    }
//    Widget _buildRow(int idx)
//    {
//
//      return ListTile(
//          leading: CircleAvatar(
//            child:Text("${contacts[idx-1].substring(0,1)}"),
//            backgroundColor: _getRandomColor(),
//          ),
//
//          title: Text(
//            '${contacts[idx-1]}',
//            style: _biggerFont,
//            textDirection: TextDirection.ltr,
//          ),
//
//        trailing: Icon(Icons.delete),
//      );
//    }
//
//
//    final _scaffoldKey = GlobalKey<ScaffoldState>();
//
//    _displaySnackBar(BuildContext context,String txt)
//    {
//      _scaffoldKey.currentState.hideCurrentSnackBar();
//      final snackBar = SnackBar(content: Text(txt));
//      _scaffoldKey.currentState.showSnackBar(snackBar);
//
//
//    }
//
//  return MaterialApp(
//
//    home: Scaffold(
//
//      key: _scaffoldKey,
//    appBar: AppBar(
//      backgroundColor: Colors.amber,
//      leading: Icon(Icons.accessibility_new),
//      title: Text('ListView'),
//
//      actions:  <Widget>[
//
//        IconButton(
//
//            icon: Icon(Icons.ac_unit),
//            onPressed: (){
//
//             _displaySnackBar(context,"Ac Unit selected");
//
//            }
//            ),
//
//        IconButton(
//            icon: Icon(Icons.account_box),
//            onPressed: (){_displaySnackBar(context,"Account Box selected");}
//        ),
//
//        PopupMenuButton(
//            itemBuilder: (BuildContext context){
//
//              return [
//                PopupMenuItem(
//                  child:
//                        Text("Feedback"),
//
//
//                ),
//
//                PopupMenuItem(
//                    child:
//                Text("Rate Us"))
//              ];
//            }
//
//        )
//      ],
//
//
//    ),
//
//    body: Center(
//
//        child: ListView.builder(
//
//          itemCount: 40,
//          padding: const EdgeInsets.all(10.0),
//          itemBuilder: (BuildContext context, int i) {
//            if (i.isOdd) return Divider();
//            final index = i ~/ 2 + 1;
//            return _buildRow(index);
//          },
//    )
//
//  ),
//
//
//  ),
//      debugShowCheckedModeBanner: false,
//
//  );
//
//  }
//
//}
//


//
//}