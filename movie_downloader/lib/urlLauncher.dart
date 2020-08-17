import 'package:url_launcher/url_launcher.dart';


void urlLunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('cannot lunch command');
    }
  }