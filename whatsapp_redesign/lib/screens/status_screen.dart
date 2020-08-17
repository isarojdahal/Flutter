import 'package:flutter/material.dart';
import 'package:whatsapp_redesing/story/saroj_story.dart';
import 'package:whatsapp_redesing/widgets/status_container.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                StatusContainer(
                  image: 'assets/ismael.jpeg',
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Your statsus will end in 18 hours later",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.5,
            ),
            Container(height: 3,color: Colors.grey,),
            SizedBox(
              height: 12.5,
            ),
            Row(
              children: [
                Text(
                  "Status:",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                StatusContainer(
                  image: 'assets/father.png',
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "father",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                StatusContainer(
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SarojStatus(),
                      ),
                    );
                  },
                  image: 'assets/saroj.jpg',
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "saroj",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                StatusContainer(
                  image: 'assets/cat.JPG',
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "auth",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                StatusContainer(
                  image: 'assets/sis.jpg',
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "sis",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
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
