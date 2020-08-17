import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  IconData icon;

  CustomFAB({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black87),
        borderRadius: BorderRadius.circular(100),
        color: Colors.black,
      ),
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
