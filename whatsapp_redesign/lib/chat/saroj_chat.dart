import 'package:flutter/material.dart';
import 'package:whatsapp_redesing/widgets/custom_appbar.dart';
import 'package:whatsapp_redesing/widgets/sms.dart';

class SarojChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBarforChat(
        name: "Saroj",
        image: 'assets/saroj.jpg',
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 16,
          bottom: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RightSMS(
                      title: "How are you brother!",
                      height: 40,
                      width: 170,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LeftSMS(
                      title: "I am fine bro. what about you?",
                      height: 55,
                      width: 160,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RightSMS(
                      title: "I'm great thanks borther",
                      height: 55,
                      width: 140,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RightSMS(
                      title:
                          "Look! do you know how to make custom appbar in flutter ",
                      height: 75,
                      width: 170,
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VoiceSMSRight(title: "1.34",)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LeftSMS(
                      title: "typing...",
                      height: 40,
                      width: 100,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 35,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "type..",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blueGrey[700],
                  ),
                  child: Center(
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey[700],
                  ),
                  child: Center(
                    child: Icon(
                      Icons.keyboard_voice,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
