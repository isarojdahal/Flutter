import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name;
  final String subTitle;
  final String image;
  final Function onPress;

  CustomListTile({
    this.name,
    this.subTitle,
    this.image,
    this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.blueGrey[900],
                width: 2,
              ),
              color: Colors.grey[800]),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
            title: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: Text(
              subTitle,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
