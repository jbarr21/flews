import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  static launchUrl(String url) async {
    await launch(url);
  }
}

class Url {
  static const String mockBaseUrl = 'https://localhost:8888/';
  static const bool mockMode = false;

  static baseUrl(String base, String url) {
    return '${(mockMode ? '$mockBaseUrl' : '$base')}$url';
  }
}

class Dates {
  static lastWeek({String format = 'yyyy-MM-dd'}) {
    return new DateFormat(format)
        .format(new DateTime.now().add(new Duration(days: -7)));
  }
}

class ClipboardUtils {
  static copyText(BuildContext context, String text) {
    Clipboard.setData(new ClipboardData(text: text));
    Scaffold.of(context).showSnackBar(new SnackBar(
        content: new Text('Copied to clipboard:\n$text')));
  }
}
