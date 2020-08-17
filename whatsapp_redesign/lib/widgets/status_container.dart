import 'package:flutter/material.dart';

class StatusContainer extends StatelessWidget {
  String image;
  Function onPress;
  StatusContainer({this.image,this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
          child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blueGrey,
            width: 2.5,
          ),
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
          ),
        ),
      ),
    );
  }
}
