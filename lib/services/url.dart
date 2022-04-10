import 'package:url_launcher/url_launcher.dart';

abstract class URL {
  // open browser to specified url target
  static launchURL(String url) async {
    try {
      await canLaunch(url)
          ? await launch(url, forceWebView: false, forceSafariVC: false)
          : throw 'Could not launch $url';
    } catch (e) {
      // to avoid app crash
      print(e);
    }
  }
}
