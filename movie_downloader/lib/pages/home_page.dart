import 'package:flutter/material.dart';
import 'package:movie_downloader/pages/movies/movies_home.dart';
import 'package:movie_downloader/pages/tvshows/The_Protector/the_protector.dart';
import 'package:movie_downloader/widgets/TvShowContainer.dart';
import 'package:movie_downloader/widgets/category_button.dart';

class HomePage extends StatelessWidget {
  AppBar _appbar = AppBar(
    leading: Icon(
      Icons.arrow_back,
      color: Colors.black,
    ),
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
              color1: Colors.red,
              color2: Colors.grey[800],
              text: "Tv Shows",
              textColor: Colors.white,
            ),
            SizedBox(
              width: 15,
            ),
            CategoryButton(
                color1: Colors.blueGrey,
                color2: Colors.grey[850],
                text: "Movies",
                textColor: Colors.white,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MoviesHome(),
                    ),
                  );
                }),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            TvShowContainer(
              imageName: 'assets/theprotector.jpg',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TheProtectorPage(),
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
              imageName: 'assets/stranger.jpg',
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
              imageName: 'assets/got.jpg',
              onPress: () {},
              height: 250,
              width: 168,
            ),
            SizedBox(
              width: 20,
            ),
            TvShowContainer(
              imageName: 'assets/dark.jpg',
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
              imageName: 'assets/peaky.jpg',
              onPress: () {},
              height: 250,
              width: 168,
            ),
            SizedBox(
              width: 20,
            ),
            TvShowContainer(
              imageName: 'assets/witcher.jpg',
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
              imageName: 'assets/vikings.jpg',
              onPress: () {},
              height: 250,
              width: 168,
            ),
            SizedBox(
              width: 20,
            ),
            TvShowContainer(
              imageName: 'assets/100.jpg',
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
