import 'package:flutter/material.dart';
import 'package:whatsapp_redesing/screens/chat_screen.dart';
import 'package:whatsapp_redesing/widgets/custom_appbar.dart';
import 'package:whatsapp_redesing/widgets/sms.dart';

class FacebookChat extends StatelessWidget {
  const FacebookChat({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBarforChat(
        name: "Facebook",
        image: 'assets/facebook.jpg',
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
                  children: [
                    LeftSMS(
                      title: "84597 is your Facebook confirmation code",
                      height: 75,
                      width: 160,
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
