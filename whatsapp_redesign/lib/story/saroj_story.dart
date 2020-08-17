import 'package:flutter/material.dart';

class SarojStatus extends StatelessWidget {
  const SarojStatus({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/saroj.jpg'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Saroj",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 130,
          ),
          Image.asset('assets/saroj.jpg'),
          SizedBox(
            height: 120,
          ),
          Center(
            child: Icon(
              Icons.keyboard_arrow_up,
              color: Colors.white,
              size: 35,
            ),
          ),
          Center(
            child: Text(
              "  say something",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
