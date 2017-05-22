import 'dart:async';
import 'package:flews/hackernews/api.dart';
import 'package:flews/hackernews/stories_tile.dart';
import 'package:flews/hackernews/story.dart';
import 'package:flews/util.dart';
import 'package:flutter/material.dart';

class StoriesPage extends StatefulWidget {
  StoriesPage({Key key}) : super(key: key);

  static const String routeName = "/stories";

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
      return new StoryListTile(story, () => UrlLauncher.launchUrl(story.url));
    }).toList();

    return new RefreshIndicator(
        child: new AnimatedCrossFade(
            firstChild: new Center(child: new CircularProgressIndicator()),
            secondChild: new ListView(children: storyListTiles),
            crossFadeState: _stories.isEmpty ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: new Duration(milliseconds: 200)),
        onRefresh: _onRefresh
    );
  }

  Future<List<Story>> _onRefresh() {
    return getTopStories();
  }
}
