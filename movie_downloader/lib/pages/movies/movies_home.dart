import 'package:flutter/material.dart';
import 'package:movie_downloader/pages/home_page.dart';
import 'package:movie_downloader/pages/movies/kissing.dart';
import 'package:movie_downloader/pages/tvshows/The_Protector/the_protector.dart';
import 'package:movie_downloader/widgets/TvShowContainer.dart';
import 'package:movie_downloader/widgets/category_button.dart';

class MoviesHome extends StatelessWidget {
  AppBar _appbar = AppBar(
    leading: Icon(Icons.arrow_back,color: Colors.black,),
    title: Text("Movie Downloader - Simple UI"),
    centerTitle: true,
    backgroundColor: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: _appbar,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: buildBody(context),
      ),
    );
  }

  buildBody(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CategoryButton(
              color1: Colors.blueGrey,
              color2: Colors.grey[850],
              text: "Tv Shows",
              textColor: Colors.white,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            SizedBox(
              width: 15,
            ),
            CategoryButton(
              color1: Colors.red,
              color2: Colors.grey[800],
              text: "Movies",
              textColor: Colors.white,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            TvShowContainer(
              imageName: 'assets/kiss.jpg',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KissingBoothPage(),
                  ),
                );
              },
              height: 250,
              width: 168,
            ),
            SizedBox(
              width: 20,
            ),
            TvShowContainer(
              imageName: 'assets/dollite.jpg',
              onPress: () {},
              height: 250,
              width: 168,
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            TvShowContainer(
              imageName: 'assets/power.jpg',
              onPress: () {},
              height: 250,
              width: 168,
            ),
            SizedBox(
              width: 20,
            ),
            TvShowContainer(
              imageName: 'assets/sniper.jpg',
              onPress: () {},
              height: 250,
              width: 168,
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            TvShowContainer(
              imageName: 'assets/spenser.jpg',
              onPress: () {},
              height: 250,
              width: 168,
            ),
            SizedBox(
              width: 20,
            ),
            TvShowContainer(
              imageName: 'assets/trolls.jpg',
              onPress: () {},
              height: 250,
              width: 168,
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            TvShowContainer(
              imageName: 'assets/justice.jpg',
              onPress: () {},
              height: 250,
              width: 168,
            ),
            SizedBox(
              width: 20,
            ),
            TvShowContainer(
              imageName: 'assets/turning.jpg',
              onPress: () {},
              height: 250,
              width: 168,
            ),
          ],
        ),
      ],
    );
  }
}
