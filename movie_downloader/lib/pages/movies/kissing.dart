import 'package:flutter/material.dart';
import 'package:movie_downloader/urlLauncher.dart';
import 'package:movie_downloader/widgets/castCircle.dart';
import 'package:movie_downloader/widgets/episodes_card.dart';

class KissingBoothPage extends StatelessWidget {
  AppBar _appbar = AppBar(
    title: Text("Kissing Booth 2"),
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
            Image.asset('assets/kisscover.jpg'),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "In the sequel to 2018's THE KISSING BOOTH, high school senior Elle juggles a long-distance relationship with her dreamy boyfriend Noah, college applications, and a new friendship with a handsome classmate that could change everything. ",
                style: TextStyle(color: Colors.white70,fontSize: 18,),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Text("Casts:",style: TextStyle(color: Colors.white,fontSize: 20),)
              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(left:17.0,bottom: 8,top: 8),
              child: Row(
                children: [
                  CastCircle(image: 'assets/joey.jpg',name: "Joey King",),
                  CastCircle(image: 'assets/joel.jpg',name: "Joel Courtney",),
                  CastCircle(image: 'assets/molly.jpg',name: "Jacob Elordi",),
                   CastCircle(image: 'assets/jacob.jpg',name: "Molly Ringwald",),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            EpisodesCard(
              "Download",
              () {
                urlLunch(
                  'https://fr-145.fileru.net/s/a6526c59fcecc026e391fd19470807b301ed4401ed121a12a4c33ca118ce45a2b606239acd8c3b4bd8f22e67c7cfdc2b4656022c2660bfef3c009e1a99d0b5ab7f67e6f64cede940261a2fd5511f76284d1c83c9e7b3be47e9ee79ebfa4dbcb9c115cedb9e417926e37417197d748310daae4a9feb386d7b75fa5f1ba3030fb2f48b4eb9fb039d007e71ec883f1fb526a41fba8178ac5eaeb183c31c6ed25e53877de32ef634938424f5a271bdd84a630308c7d855d48febaeca27afbf834c788e5724aae346e823ff7178eba36cdd459f3ec0cc5d753004c532ba8efdb34a41a353adb3bddfdb6e3379f2c41b6a78f372553c39ef84b3d01f5a55bcc22ca8393234a5e6e8dc4f4dd15aba86d93df64fd181f807cfaccea793161357d8c8fb12cfa5a962eb44a8bbeb04fd4805440f1da712f136f32c7738c067687a4ec6108329342d8164f42a713a83c966b51e000aab11af76c335917f67e88fca0d53b0c4eef9046ccd565f57e0658415f362f32b932bf763096337a6ca23d6a81c2709785d78de06bdb5f6aa9f006b4c5ed238e909cae87241b5c6c2cc5c8259408a40b1be8b8bb0706a691c38b2941a38cbad01d8c60fe6b7bc7e7f3f7d0aa14e63d7f49c6467fdde704483bfbcf80892c6aad7d4729b70820f71f8c3440acb9688bd0ce02437e5b72462857134fa95c2104fbe4a082e9817560efe66fdd0c44db154ed854c7cdf033f68499cb9d88ed8707283e13cea3a443ebc2387ab3276bd2b0ef4787a1a814f9d047517efd88f17667b7a40cc3da550ee44cc205046f165dd1da5506b38169afee6ee00d59439ef1558c012039730ad49d4a3827c40ff4cb8397ebae55ef35668f968859ba4afeaef7fe2be2225aa1a0d531a4026abf99098e66344302ffcfa2ffe7dd08d8b7de8149fae26e4e1448491434f4f8f0ce592316d39c55cee151de13663207e16466d210d0639d5da5ede69c705b2d41186eae99254850bfe7931acc77ae5b9e3d58a0a32807495f054ab3fda549130d48fa1f544614f118827ded68e19b366b8c539d9d855b96f400cc05882d728383869ba05163f',
                );
              },
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
