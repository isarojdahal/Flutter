import 'package:flutter/material.dart';

class EpisodesCard extends StatelessWidget {
  final String title;
  final Function onPress;
  EpisodesCard(this.title,this.onPress,);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,bottom: 15),
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            color: Colors.grey[800],
            border: Border.all(color: Colors.red, width: 0.2),
          ),
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            trailing: Icon(
              Icons.file_download,
              color: Colors.lightGreenAccent,
            ),
          ),
        ),
      ),
    );
  }
}
