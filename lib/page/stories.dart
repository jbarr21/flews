import 'dart:async';
import 'dart:math';
import 'package:flews/api.dart';
import 'package:flews/model/story.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StoriesPage extends StatefulWidget {
  StoriesPage({Key key, this.title}) : super(key: key);

  static const String routeName = "/stories";

  final String title;

  @override
  _StoriesPageState createState() => new _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  List<Story> _stories = [];

  @override
  void initState() {
    super.initState();
    getTopStories().then((stories) {
      setState(() {
        _stories = stories;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final storyListTiles = _stories.map((story) {
      return new StoryListTile(story, () => launch(story.url));
    }).toList();

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new RefreshIndicator(
        child: new ListView(children: storyListTiles),
        onRefresh: _onRefresh
      )
    );
  }

  Future<List<Story>> _onRefresh() {
    return getTopStories();
  }
}

class StoryListTile extends StatelessWidget {
  final Story story;
  final GestureTapCallback tapCallback;

  final Random random = new Random();

  StoryListTile(this.story, this.tapCallback);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      title: new Text(story.title, maxLines: 2, overflow: TextOverflow.ellipsis),
      subtitle: new Text(story.domainName()),
      trailing: new Text(story.commentCount().toString()),
      onTap: tapCallback
    );
  }
}
