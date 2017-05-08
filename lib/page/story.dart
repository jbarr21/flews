import 'package:flutter/material.dart';

class StoryPage extends StatefulWidget {
  StoryPage({Key key, this.title}) : super(key: key);

  static const String routeName = "/stories/story";

  final String title;

  @override
  _StoryPageState createState() => new _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container()
    );
  }
}
