import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;

  CustomTextField({
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white, fontSize: 16),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        labelText: labelText,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blueGrey[800]),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.blueGrey[800],
          ),
        ),
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        focusColor: Colors.white,
      ),
    );
  }
}
