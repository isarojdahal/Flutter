import 'package:flutter/material.dart';

class CastCircle extends StatelessWidget {
  String image;
  String name;

  CastCircle({this.image, this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:10.0,left: 4),
      child: Column(
        children: [
          Container(
            height: 65,
            width: 65, 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.red),
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
