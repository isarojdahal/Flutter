import 'package:flutter/material.dart';

class CustomCallListTile extends StatelessWidget {
  String title;
  String subtitle;
  IconData callIcon;
  String callTitle;
  Color textColor;
  IconData icon;

  CustomCallListTile({
    this.title,
    this.subtitle,
    this.callIcon,
    this.callTitle,
    this.icon,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          border: Border.all(
            color: Colors.blueGrey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  callIcon,
                  size: 17,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  callTitle,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          trailing: Icon(
            icon,
            color: Colors.white,
            size: 28,
          ),
        ),
      ),
    );
  }
}
