import 'package:flutter/material.dart';
import 'package:whatsapp_redesing/widgets/custom_call_listTile.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: buildCallBody(),
      ),
    );
  }

  buildCallBody() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Calls:",
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
          ],
        ),
        SizedBox(height: 20),
        CustomCallListTile(
          title: "Saroj",
          callIcon: Icons.call,
          callTitle: "Outgoing",
          textColor: Colors.white,
          icon: Icons.call,
        ),
        CustomCallListTile(
          title: "Mom",
          callIcon: Icons.videocam,
          callTitle: "Missed",
          textColor: Colors.redAccent,
          icon: Icons.video_call,
        ),
        CustomCallListTile(
          title: "My Love ❤️",
          callIcon: Icons.videocam,
          callTitle: "Incoming",
          textColor: Colors.white,
          icon: Icons.video_call,
        ),
        CustomCallListTile(
          title: "Saroj",
          callIcon: Icons.call,
          callTitle: "Incoming",
          textColor: Colors.white,
          icon: Icons.call,
        ),
        CustomCallListTile(
          title: "Dad",
          callIcon: Icons.call,
          callTitle: "Missed",
          textColor: Colors.redAccent,
          icon: Icons.call,
        ),
        CustomCallListTile(
          title: "Dad",
          callIcon: Icons.call,
          callTitle: "Outgoing",
          textColor: Colors.white,
          icon: Icons.call,
        ),
        CustomCallListTile(
          title: "My Love ❤️",
          callIcon: Icons.videocam,
          callTitle: "Outgoing",
          textColor: Colors.white,
          icon: Icons.video_call,
        ),
      ],
    );
  }
}
