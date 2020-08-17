import 'package:flutter/material.dart';

class LeftSMS extends StatelessWidget {
  final String title;
  final double height;
  final double width;

  LeftSMS({
    this.title,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey),
        color: Colors.grey[800],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 10,
          left: 10,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class RightSMS extends StatelessWidget {
  final String title;
  final double height;
  final double width;

  RightSMS({
    this.title,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.blueGrey[700],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 10,
          left: 10,
        ),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}

class VoiceSMSRight extends StatelessWidget {
  final String title;

  VoiceSMSRight({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 165,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blueGrey[800],
            Colors.grey[800],
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 8, left: 10, bottom: 8),
        child: Row(
          children: [
            Icon(
              Icons.keyboard_voice,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(width: 10,),
            Container(
              height: 3,
              width: 80,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            SizedBox(width: 10,),
            Center(child: Text(title,style: TextStyle(color: Colors.white ,fontSize: 10,),),)
          ],
        ),
      ),
    );
  }
}

class VoiceSMSLeft extends StatelessWidget {
  final String title;

  VoiceSMSLeft({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 165,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blueGrey[800],
            Colors.grey[800],
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 8, left: 10, bottom: 8),
        child: Row(
          children: [
            Icon(
              Icons.keyboard_voice,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(width: 10,),
            Container(
              height: 3,
              width: 80,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            SizedBox(width: 10,),
            Center(child: Text(title,style: TextStyle(color: Colors.white ,fontSize: 10,),),)
          ],
        ),
      ),
    );
  }
}
