import 'package:flutter/material.dart';
import 'package:whatsapp_redesing/chat/facebook_chat.dart';
import 'package:whatsapp_redesing/chat/saroj_chat.dart';
import 'package:whatsapp_redesing/chat/sister_chat.dart';
import 'package:whatsapp_redesing/screens/call_screen.dart';
import 'package:whatsapp_redesing/screens/status_screen.dart';
import 'package:whatsapp_redesing/widgets/custom_FAB.dart';
import 'package:whatsapp_redesing/widgets/custom_appbar.dart';
import 'package:whatsapp_redesing/widgets/custom_listTile.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: CustomAppBar(
        title: "Whatsapp",
      ),
      body: PageView(
        children: [
          buildChatBody(context),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: CustomFAB(
        icon: Icons.add,
      ),
    );
  }

  buildChatBody(context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          CustomListTile(
            image: 'assets/saroj.jpg',
            name: "Saroj",
            subTitle: "typing...",
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SarojChat(),
                ),
              );
            },
          ),
          CustomListTile(
            image: 'assets/sis.jpg',
            name: "Sis",
            subTitle: "hmm okay not problem",
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SisterChat(),
                ),
              );
            },
          ),
          CustomListTile(
            image: 'assets/girl.jpg',
            name: "My Love ❤️",
            subTitle: "Me: I love u my babe ",
            onPress: () {},
          ),
          CustomListTile(
            image: 'assets/facebook.jpg',
            name: "Facebook Bussines ✅",
            subTitle: "84597 is your Facebook confirmati...",
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FacebookChat(),
                ),
              );
            },
          ),
          CustomListTile(
            image: 'assets/family.jpg',
            name: "Family Group",
            subTitle: "aunt: iska which date is will be onlin...",
            onPress: () {},
          ),
          CustomListTile(
            image: 'assets/mother.jpg',
            name: "Mom",
            subTitle: "iska i will call you wait ",
            onPress: () {},
          ),
          CustomListTile(
            image: 'assets/father.png',
            name: "Dad",
            subTitle: "Me: Dad change your profile photo ...",
            onPress: () {},
          ),
          CustomListTile(
            image: 'assets/cat.JPG',
            name: "Aunth",
            subTitle: "iska look family group!!",
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
