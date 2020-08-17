import 'package:flutter/material.dart';
import 'package:movie_downloader/pages/tvshows/The_Protector/protectorS4.dart';
import 'package:movie_downloader/widgets/back_season_button.dart';
import 'package:movie_downloader/widgets/episodes_card.dart';
import 'package:movie_downloader/widgets/next_season_button.dart';

class TheProtectorSeason3 extends StatelessWidget {
  AppBar _appbar = AppBar(
    leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
    title: Text("The Protector"),
    centerTitle: true,
    backgroundColor: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: _appbar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/theprotectorcover.jpg'),
            SizedBox(
              height: 15,
            ),
            Text(
              "Season 3",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            EpisodesCard("Episode 1",(){}),
            EpisodesCard("Episode 2",(){}),
            EpisodesCard("Episode 3",(){}),
            EpisodesCard("Episode 4",(){}),
            EpisodesCard("Episode 5",(){}),
            EpisodesCard("Episode 6",(){}),
            EpisodesCard("Episode 7",(){}),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BackSeasonButton(
                  onPress: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                NextSeasonButton(
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TheProtectorSeason4(),
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
