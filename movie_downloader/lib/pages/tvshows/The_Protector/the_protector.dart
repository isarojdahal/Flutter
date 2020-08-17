import 'package:flutter/material.dart';
import 'package:movie_downloader/pages/tvshows/The_Protector/protectorS2.dart';
import 'package:movie_downloader/widgets/castCircle.dart';
import 'package:movie_downloader/widgets/episodes_card.dart';
import 'package:movie_downloader/widgets/next_season_button.dart';

class TheProtectorPage extends StatelessWidget {
  AppBar _appbar = AppBar(
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Discovering his ties to a secret ancient order, a young man living in modern Istanbul embarks on a quest to save the city from an immortal enemy. ",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Casts:",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8,bottom: 8,),
              child: Row(
                children: [
                  CastCircle(
                    image: 'assets/cagtay.jpg',
                    name: "Çagatay Ulusoy",
                  ),
                  CastCircle(
                    image: 'assets/hazar.jpg',
                    name: "Hazar Ergüçlü ",
                  ),
                  CastCircle(
                    image: 'assets/okan.jpg',
                    name: "Okan Yalabık",
                  ),
                  CastCircle(
                    image: 'assets/funda.jpg',
                    name: "Funda Eryiğit",
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Season 1",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            EpisodesCard(
              "Episode 1",
              () {},
            ),
            EpisodesCard(
              "Episode 2",
              () {},
            ),
            EpisodesCard(
              "Episode 3",
              () {},
            ),
            EpisodesCard(
              "Episode 4",
              () {},
            ),
            EpisodesCard(
              "Episode 5",
              () {},
            ),
            EpisodesCard(
              "Episode 6",
              () {},
            ),
            EpisodesCard(
              "Episode 7",
              () {},
            ),
            EpisodesCard(
              "Episode 8",
              () {},
            ),
            EpisodesCard(
              "Episode 9",
              () {},
            ),
            EpisodesCard(
              "Episode 10",
              () {},
            ),
            SizedBox(
              height: 15,
            ),
            NextSeasonButton(
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TheProtectorSeason2(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
