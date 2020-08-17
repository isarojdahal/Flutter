import 'package:flutter/material.dart';

class TvShowContainer extends StatelessWidget {
  final String imageName;
  final Function onPress;
  final double height;
  final double width;

  TvShowContainer({
    this.imageName,
    this.onPress,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        bottom: 10,
      ),
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 0.1),
            image: DecorationImage(
              image: AssetImage(
                imageName,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
