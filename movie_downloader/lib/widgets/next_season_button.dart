import 'package:flutter/material.dart';

class NextSeasonButton extends StatelessWidget {
  final Function onPress;

  NextSeasonButton({this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: GestureDetector(
        onTap: onPress,
              child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey[900],
            borderRadius: BorderRadius.circular(30),
          ),
          height: 45,
          width: 150,
          child: Center(
            child: Row(
              children: [
                SizedBox(width: 15,),
                Text("Next season",style: TextStyle(color: Colors.white,fontSize: 17.8,),),
                Icon(Icons.navigate_next,color: Colors.white,size: 28,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
