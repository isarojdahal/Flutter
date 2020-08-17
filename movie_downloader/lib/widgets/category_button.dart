import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  Color color1;
  Color color2;
  String text;
  Color textColor;
  Function onPress;

  CategoryButton({this.color1, this.color2, this.text, this.textColor,this.onPress,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 40,
        width: 85,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color1,
              color2,
            ],
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
