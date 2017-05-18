import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  static launchUrl(String url) async {
    await launch(url);
  }
}