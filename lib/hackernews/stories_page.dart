import 'dart:async';

import 'package:flews/hackernews/stories_repository.dart';
import 'package:flews/hackernews/stories_tile.dart';
import 'package:flews/hackernews/story.dart';
import 'package:flews/util.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class StoriesPage extends StatefulWidget {
  static const String routeName = "/stories";

  StoriesPage({Key key}) : super(key: key);

  @override
  _StoriesPageState createState() =>
      new _StoriesPageState(new StoriesRepositoryImpl(new Client()));
}

class _StoriesPageState extends State<StoriesPage> {
  StoriesRepository _repository;
  List<Story> _stories = [];

  _StoriesPageState(this._repository);

  @override
  void initState() {
    super.initState();
    loadStories();
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
            crossFadeState: _stories.isEmpty
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: new Duration(milliseconds: 200)),
        onRefresh: _onRefresh);
  }

  Future _onRefresh() {
    return new Future(loadStories);
  }

  void loadStories() {
    _repository.getTopStories()
        .listen((List<Story> stories) {
          setState(() {
            _stories = stories;
          });
        });
  }
}
